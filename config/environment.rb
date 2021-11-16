# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'softwaresetsail', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'form4s.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
