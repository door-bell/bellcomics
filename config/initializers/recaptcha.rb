Recaptcha.configure do |config|
  config.site_key  = ENV['RECAP_SITE_KEY']
  config.secret_key = ENV['RECAP_SECRET_KEY']
end
