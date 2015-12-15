require 'selenium-webdriver'
require "selenium/client"
require 'csv'
require 'watir-webdriver'
require 'rubygems'
require 'appium_lib'

APP_PATH = '/Users/agolubev1/Desktop/SafariLauncher.ipa'

desired_caps = {
  caps:       {
    platformName:  'iOS',
    versionNumber: '8.4',
    deviceName:    'iPhone 6',
    app:           APP_PATH,
    udid: '03aad7cc56446be7adccca4988873313ad951969',
    url: 'http://0.0.0.0:4723/wd/hub',
autoWebview: 'true',
safariAllowPopups: 'failse',
safariIgnoreFraudWarning: 'true',

   
  },
  
}



Given(/^I have App running with appium$/) do
	sleep 15
puts "I will go to URL in 25 seconds"
sleep 15
  
sleep 15
puts "I'm going to the site in 20 seconds"
sleep 5
 driver = Appium::Driver.new(desired_caps)
driver = driver.start_driver 
# Start the driver
 sleep 20
puts "Waited 20 seconds about to start"

sleep 4

driver.div(:class =>'btn write-review').when_present.click

sleep 10
driver.save_screenshot  "WriteReview/#{Time.now.strftime("write_review_%d_%m_%Y__%H_%M_%S")}.png"
end

When(/^click \+ submit$/) do
  driver.get "https://bountytowels.com/en-us/loginpage"

sleep 15
driver.save_screenshot  "WriteReview/#{Time.now.strftime("write_review_%d_%m_%Y__%H_%M_%S")}.png"
end

When(/^I enter text "([^"]*)" and saved it$/) do |arg1|

end

Then(/^I should see "([^"]*)" note added on home page$/) do |arg1|

end
