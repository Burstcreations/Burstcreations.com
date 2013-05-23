class MessageMailer < ActionMailer::Base
  default :from => "no-reply@burstcreations.com"

  def message_email(admin, message)
    @admin = admin
    @message = message

    mail(:to => admin.email, :subject => "Message from #{message.name} - Burstcreations")
  end
end
