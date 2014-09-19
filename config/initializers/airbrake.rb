Airbrake.configure do |config|
  config.api_key = 'Your key here'
  config.development_environments = []
end

# Pretend that the request isn't local, so that Airbrake will put together a report
ActionDispatch::Request.class_eval do
  def local?
    false
  end
end
