class Availability < ActiveRecord::Base
  attr_accessible :available, :enabled

  belongs_to :admin
end
