# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Sociallunch::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "railscasts.com",
  :user_name            => "nick.hould",
  :password             => "mirntnugpfvitkho",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
