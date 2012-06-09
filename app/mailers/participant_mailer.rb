class ParticipantMailer < ActionMailer::Base
  default from: "example@example.com"

  def invitation_email(participant, event)
    @participant = participant
    @event = event
    @url  = event_url(event)
    mail(:to => participant.email, 
    		 :subject => "Welcome to My Awesome Site")
  end

end
