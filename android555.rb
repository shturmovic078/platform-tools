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

counter=0

browser = Watir::Browser.new driver
puts "Testing in Galaxy S3"


#loc2= "#{row['image']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"
sleep 5
counter+=1;
puts counter

#driver.scroll.to [0, 300]
#driver.goto loc1
puts "I'm about to go to URL "
sleep 5
driver.navigate.to "http://author.oralb.pgsitecore.com"


driver.save_screenshot driver.title<<"_galaxyS3_landscape.png"

#driver.scroll.to [100, 0]

browser.a(:class =>'nav-open-btn').when_present.click
     
sleep 2

driver.save_screenshot driver.title<<"_galaxyS3_landscape.png"

