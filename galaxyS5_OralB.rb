require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
#iphone 5
#driver = Selenium::WebDriver.for :remote, :url => "http://192.168.2.3:3001/wd/hub", :desired_capabilities => :iphone
#ihpone 6
caps = Selenium::WebDriver::Remote::Capabilities.android  
client = Selenium::WebDriver::Remote::Http::Default.new  
client.timeout = 480  
driver = Selenium::WebDriver.for(  
  :remote,  
  :url => "http://localhost:8080/wd/hub/",  
  :http_client => client,  
  :desired_capabilities => caps)  


browser = Watir::Browser.new driver
#browser.goto "http://nesn.com"

counter=1

csv_text = File.read('katya.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"

sleep 2
browser.goto loc1




sleep 2
puts "About to go to #"<<counter



driver.save_screenshot browser.title<<".png"
counter +=1
sleep 2

end