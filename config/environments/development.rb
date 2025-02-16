Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

    
  config.web_console.whitelisted_ips  = '173.219.167.170'
  # Do not eager load code on boot.
  config.eager_load = false
  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_deliveries = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  config.action_mailer.delivery_method = :smtp
  # SMTP settings for gmail
  #config.action_mailer.smtp_settings = {
  # :address              => "smtp.gmail.com",
  # :port                 => 587,
  # :user_name            => 'tmpemailfortesting@gmail.com',
  # :password             => 'simplepassword',
  # :authentication       => "plain",
  #:enable_starttls_auto => true
  #}
  config.action_mailer.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'form4s.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
  }
  
  config.action_mailer.default_url_options = { :host => "c724f07a446c452e9a830e7c64dff91e.vfs.cloud9.us-east-2.amazonaws.com" }
end
