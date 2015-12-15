require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
#iphone 5
#driver = Selenium::WebDriver.for :remote, :url => "http://192.168.2.3:3001/wd/hub", :desired_capabilities => :iphone
#ihpone 6
driver = Selenium::WebDriver.for :remote, :url => "http://192.168.2.4:3001/wd/hub", :desired_capabilities => :iphone

#driver = Selenium::WebDriver.for :remote, :url => "http://172.28.60.85:3001/wd/hub", :desired_capabilities => :iphone
browser = Watir::Browser.new driver
#browser.goto "http://nesn.com"

counter=0
browser.goto "http://int.oralb.pgsitecore.com/"
csv_text = File.read('product_popup.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc2= "#{row['product']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"
puts loc1

sleep 4
browser.div(:class=> 'search-icon-on activeTab3').click          
sleep 2
browser.text_field(:name => 'phsmartphoneheader_0$SearchBoxUC$txtSearchBox').set loc1
sleep 2



 
sleep 3
driver.save_screenshot "iPhone5/#{Time.now.strftime("write3_empty_%d_%m_%Y__%H_%M_%S")}.png"




browser.link(:text =>"ADD TO CART").when_present.click              
                
sleep 5

driver.save_screenshot "iPhone5/#{Time.now.strftime("write3_empty_%d_%m_%Y__%H_%M_%S")}.png"

sleep 5

browser.a(:id=> 'lnkAddToCart').click 
sleep 4    
driver.save_screenshot "iPhone5/#{Time.now.strftime("write3_empty_%d_%m_%Y__%H_%M_%S")}.png"
sleep 2


end