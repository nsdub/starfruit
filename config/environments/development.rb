Starfruit::Application.configure do
  
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.delivery_method = :smtp 
  config.action_mailer.smtp_settings = {
    :address   => "smtp.mandrillapp.com",
    :port      => 25,
    :enable_starttls_auto => true,
    :user_name => ENV["SF_MANDRILL_USERNAME"],
    :password  => ENV["SF_MANDRILL_API_KEY"],
    :authentication => 'login',
    :domain => 'starfruit-env-qtf8vnmzet.elasticbeanstalk.com'
  }
  
  # Settings specified here will take precedence over those in config/application.rb.

  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  
  # This may not be necessary for rails 4 apps?
  ActionMailer::Base.delivery_method = :smtp
  
  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true
  

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
end
