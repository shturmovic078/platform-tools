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


puts "Testing in Galaxy S3"
csv_text = File.read('temp.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"
sleep 5
counter+=1;
puts counter
puts loc1

driver.navigate.to loc1
#driver.scroll.to [0, 300]
#driver.goto loc1
puts "8 to expand" 
sleep 8
driver.save_screenshot "./#{Time.now.strftime("GalaxyS4_screen_%d_%m_%Y__%H_%M_%S")}.png"

puts "8 to expand" 
sleep 8
driver.save_screenshot "./#{Time.now.strftime("GalaxyS4_screen_%d_%m_%Y__%H_%M_%S")}.png"

puts "8 to expand" 
sleep 8
driver.save_screenshot "./#{Time.now.strftime("GalaxyS4_screen_%d_%m_%Y__%H_%M_%S")}.png"

puts "8 to expand" 
sleep 8
driver.save_screenshot "./#{Time.now.strftime("GalaxyS4_screen_%d_%m_%Y__%H_%M_%S")}.png"



#driver.scroll.to [100, 0]


     
sleep 1


end