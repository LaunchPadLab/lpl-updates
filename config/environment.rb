# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  user_name: ENV['TEST_USERNAME'],
  password: ENV['TEST_PASSWORD'],
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: 'plain',
  enable_starttls_auto: true
}
