class Availability < ActiveRecord::Base
  attr_accessible :date, :enabled, :time

  belongs_to :admin
end
