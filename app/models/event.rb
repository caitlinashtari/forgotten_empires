class Event < ActiveRecord::Base
  belongs_to :statistics
  belongs_to :nation
end
