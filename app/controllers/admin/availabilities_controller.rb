class Admin::AvailabilitiesController < ApplicationController
  before_filter :authenticate_admin!, :except => [:index]

  def index
    @availabilities = Availability.all
  end

  def new
    @availability = Availability.new
  end

  def create 
    @availability = Availability.new(params[:availability])

    if @availability.save
      flash[:notice] = "Availability saved successfully!"
    else
      flash[:error] = "Sorry! Couldn't save availability!"
    end

    redirect_to admin_availabilities_path
  end

  def show
    @availability = Availability.find(params[:id])
  end

end