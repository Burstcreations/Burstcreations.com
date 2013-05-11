class Message < ActiveRecord::Base
  attr_accessible :date_sent, :email, :message, :name, :prefered_consultation_time, :schedule_consultation, :website

  validates :name, :presence => true
  validates :email, :presence => true
  validates :message, :presence => true

  #belongs_to :admin
end
