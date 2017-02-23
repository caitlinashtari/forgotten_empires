require 'rails_helper'

RSpec.describe Nation, type: :model do
  it { should validate_presence_of :name }
  it { should belong_to :user}

  describe '.new_stats' do
    it 'updates stats depending on nation govt' do
      user = FactoryGirl.create(:user)
      nation = FactoryGirl.create(:nation, :user_id => user.id)
      nation.new_stats
      expect(nation.statistics.first.resources).to eq "oil"
    end
  end
end
