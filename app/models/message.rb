class Message < ActiveRecord::Base
  include Humanizer
  attr_accessible :date_sent, :email, :message, :name, 
    :prefered_consultation_time, :schedule_consultation, :website,
    :humanizer_answer, :humanizer_question_id

  require_human_on :save

  validates :name, :presence => true
  validates :email, :presence => true
  validates :message, :presence => true

  belongs_to :admin
end
