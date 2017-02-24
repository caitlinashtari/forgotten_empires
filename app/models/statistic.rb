class Statistic < ActiveRecord::Base
  belongs_to :nation
  has_many :events

  def stat_levels

  end
end
