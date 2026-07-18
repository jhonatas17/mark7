require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium
  # Use environment variable for app host, default to localhost for development
  config.app_host = ENV['CAPYBARA_APP_HOST'] || 'http://localhost:3000'
end

Capybara.default_max_wait_time = 5
