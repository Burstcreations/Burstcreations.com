class MessagesController < ApplicationController
  before_filter :authenticate_admin!, :except => [:new]

  def index
    @messages = Message.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @messages }
    end
  end

  def new
    @message = Message.new(params[:message])

    if @message.save
      flash[:notice] = "Message sent successfully! Thank you!"
    else
      flash[:error] = "Unable to send your message. Please let me know of the issue via Twitter."
    end

    redirect_to :back
  end
end
