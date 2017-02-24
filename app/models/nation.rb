class Nation < ActiveRecord::Base
  validates :name, :presence => true
  belongs_to :user
  has_many :statistics
  has_many :events, through: :statistics

  def new_stats
    stats = nil
    capital = 0
    resources = ""
    population = 0
    stability = 0
    if self.govt === "Democracy"
      capital += 10000
      resources = "oil"
      population += 500000
      stability += 80
    elsif self.govt === "Dictatorship"
      capital += 1000
      resources = "potatoes"
      population += 30000
      stability += 30
    elsif self.govt === "Monarchy"
      capital += 100000
      resources = "rubies"
      population += 2000
      stability += 90
    elsif self.govt === "Oligarchy"
      capital += 20000
      resources = "timber"
      population += 100
      stability += 60
    elsif self.govt === "Neighborhood Watch"
      capital += 10
      resources = "Livestock"
      population += 5
      stability += 6
    end
    stat = self.statistics.new({capital: capital, resources: resources, population: population, stability: stability})
    stat.save
  end
end
