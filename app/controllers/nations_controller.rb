class NationsController < ApplicationController
  def index
    @user = current_user
    @nation = @user.nations.last
    if @nation != nil
    @statistics = @nation.statistics.first
    else
      @statistics = nil
    end
  end

  def new
    @user = current_user
    @nation = @user.nations.new
    @statistics = @nation.statistics.new

  end

  def create
    @user = current_user
      @nation = @user.nations.new(nation_params)
      if @nation.save
        initial_stats = @nation.new_stats
        @statistics = @nation.statistics.first
        respond_to do |format|
          format.html {redirect_to user_nations_path}
          format.js { flash[:notice] = "A new empire is born!"}
        end
      else
        flash[:alert] = "oOOOOPPSS"
        render :new
      end
  end

private
  def nation_params
    params.require(:nation).permit(:name, :culture, :govt, :econ, :geo)
  end

  def statistics_params
    params.require(:statistics).permit(:capital, :resources, :population, :stability)
  end
end
