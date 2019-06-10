# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default :content_type => "text/html"
ActionMailer::Base.delivery_method = :smtp


ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true,
  :domain => "033rooftop.com.br",
  :user_name => "teatrosantander033rooftop@gmail.com",
  :password => "Teatro@2018"
}

