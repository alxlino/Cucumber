require 'capybara'
#require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'capybara/rspec/matcher_proxies'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'faker'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'https://ninjainvoices.herokuapp.com'
end

Capybara.default_max_wait_time = 5