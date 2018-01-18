require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'


Capybara.configure do |config|
  config.default_driver = :selenium
 # config.default_driver = :selenium_chrome_headless
end



Capybara.default_max_wait_time = 20

