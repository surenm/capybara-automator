require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara-webkit'

Capybara.configure do |config|
  config.default_driver = :webkit
  config.app_host   = 'http://www.facebook.com'
end
World(Capybara)
