class StaticController < ApplicationController
  def index
  end

  def ilya
    @id = 1
    @email = "ilya@burstcreations"
  end

  def anna
    @id = 2
    @email = "anna@burstcreations.com"
  end
end
