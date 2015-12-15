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

counter=0
browser = Watir::Browser.new driver
#browser.goto "http://nesn.com"

counter=0

csv_text = File.read('cart1.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
loc2= "#{row['account']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"

sleep 5
browser.goto loc1

puts "screens"


sleep 2
puts "Details"
browser.a(:id, loc2).click # contains 'partial', case insensitive               
                
sleep 10

driver.save_screenshot "GalaxyS3/#{Time.now.strftime("write3_empty_%d_%m_%Y__%H_%M_%S")}.png"

sleep 5
browser.a(:id, "lnkAddToCart").click # contains 'partial', case insensitive   


sleep 5
driver.save_screenshot "GalaxyS3/#{"About to add to cart landscape"}.png"

sleep 4

end