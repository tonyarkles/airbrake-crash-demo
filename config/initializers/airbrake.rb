Airbrake.configure do |config|
  config.api_key = 'Your key here'
  config.development_environments = [] # let the bug happen in development
end
