class Admin::AvailabilitiesController < ApplicationController
  before_filter :authenticate_admin!, :except => [:index]

  def index
    @availabilities = current_admin.availabilities.all
  end

  def new
    @availability = Availability.new
  end

  def create 
    @availability = current_admin.availabilities.create(params[:availability])

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