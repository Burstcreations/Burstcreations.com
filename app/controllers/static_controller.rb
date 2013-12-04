class StaticController < ApplicationController
  def index
  end

  def ilya
    @id = 1
    @email = "ilya@burstcreations"
    @message = Message.new
  end

  def anna
    @id = 2
    @email = "anna@burstcreations.com"
    @message = Message.new
  end
end
