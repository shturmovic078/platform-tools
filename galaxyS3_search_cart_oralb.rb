require 'selenium-webdriver'
require "selenium/client"
require 'csv'
require 'watir-scroll'
require 'watir-webdriver'
require 'webdriver-user-agent'

caps = Selenium::WebDriver::Remote::Capabilities.android  
client = Selenium::WebDriver::Remote::Http::Default.new  
client.timeout = 480  
driver = Selenium::WebDriver.for(  
  :remote,  
  :url => "http://localhost:8080/wd/hub/",  
  :http_client => client,  
  :desired_capabilities => caps)  


driver.get "http://int.oralb.pgsitecore.com/en-us/search-page?term=Satin%20tape"
puts "sleep 6"
sleep 6
driver.save_screenshot  "GalaxyS3/#{Time.now.strftime("%d_%m_%Y__%H_%M_%S")}.png"

puts "sleep 6"
sleep 6
driver.save_screenshot  "GalaxyS3/#{Time.now.strftime("%d_%m_%Y__%H_%M_%S")}.png"

puts "sleep 6"
sleep 6
driver.save_screenshot  "GalaxyS3/#{Time.now.strftime("%d_%m_%Y__%H_%M_%S")}.png"