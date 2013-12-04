class Admin::MessagesController < ApplicationController
  before_filter :authenticate_admin!, :except => [:new, :create]

  def index    
    @messages = current_admin.messages.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @messages }
    end
  end

  def show
    @message = current_admin.message.find(params[:id])
  end

  def new
  end

  def create
    @admin = Admin.find(params[:userid])
    @message = @admin.messages.create(params[:message])

    if @message.humanizer_correct_answer?
      if @message.save
        MessageMailer.message_email(@admin, @message).deliver
        flash[:notice] = "Message sent successfully! Thank you!"
      else
        flash[:error] = "Unable to send your message."
      end        
    else
      flash[:error] = "You answered the question incorrectly, please try again."
    end

    redirect_to :back
  end

  def destroy
    @message = current_admin.messages.find(params[:id])

    if @message
      @message.destroy
      redirect_to :back
    end
  end
end
