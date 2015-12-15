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

csv_text = File.read('collection.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc2= "#{row['product']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"

sleep 5
browser.goto loc1
sleep 4

driver.save_screenshot "iPhone5S/#{Time.now.strftime("write2_empty_%d_%m_%Y__%H_%M_%S")}.png"


#browser.a(:id=> 'phsmartphonebody_0_phsmartphoneproductmenunavigation_0_rptrProductCategory_hypProductCategorylink_0').click                  
                
#sleep 4

#driver.save_screenshot "iPhone5S/#{"About to submit 1lp"}.png"

#sleep 5
#driver.save_screenshot "iPhone5S/#{"About to add to cart landscape"}.png"
sleep 2


end