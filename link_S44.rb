require 'selenium-webdriver'
require "selenium/client"
require 'csv'
require 'watir-scroll'
require 'watir-webdriver'
require 'webdriver-user-agent'
require 'io/console'

name = ""
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
yes = "yes"
no  = "no"

puts "Testing in Galaxy S3"
csv_text = File.read('url_oralb.csv',encoding: "iso-8859-1:UTF-8")
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc2= "#{row['image']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"
sleep 5
counter+=1;
puts counter
puts loc1

driver.navigate.to loc1


puts browser.div(:text => /PRODUCT DETAILS/).text
browser.scroll.to [0, 600]
#driver.goto loc1
sleep 2
browser.div(:text => /PRODUCT DETAILS/).click
browser.a(:class => "main-nav-name").click

sleep 5

name = "yes"
while name=="yes"

puts "What do you want to do "
name = gets 
sleep 1
name = name.chomp
puts "Your choice "<<name



if name==yes
	puts "Yes take a screenshot"
end
puts "Choice "<<name
puts "Answer "<< yes
   puts name.eql? yes.to_s
    driver.save_screenshot "GalaxyS4Regression/#{Time.now.strftime("write3_empty_%d_%m_%Y__%H_%M_%S")}.png"
    end 
   







#driver.scroll.to [100, 0]


     
sleep 1


end