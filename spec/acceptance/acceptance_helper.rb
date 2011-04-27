require 'rspec'
require 'capybara/rspec'

Capybara.register_driver :selenium do |app|
  require 'selenium/webdriver'
  profile = Selenium::WebDriver::Firefox::Profile.new
  # profile.add_extension(File.expand_path("spec/support/firebug.xpi"))
  # profile['general.useragent.override'] = "iPhone"

  Capybara::Selenium::Driver.new(app, { :browser => :firefox, :profile => profile })
end
