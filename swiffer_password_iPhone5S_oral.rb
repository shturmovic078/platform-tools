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

csv_text = File.read('login.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc2= "#{row['product']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"
sleep 5
browser.goto "https://swiffer.com/en-us/loginpage"
puts loc1
#browser.goto loc1
sleep 5
driver.save_screenshot "iPhone5/#{"Reset_Pasword"}.png"

sleep 5

#browser.scroll.to [0, 600]
#sleep 4
browser.goto("http://swiffer.com/en-us/resetpasswordpage")
#browser.link(:text =>loc3).when_present.click

sleep 4

browser.text_field(:name => 'phsmartphonebody_0$username').set 'albert.golubev@pkt1.com'
sleep 4
browser.text_field(:name => 'phsmartphonebody_0$zipcode').set '11235'

driver.save_screenshot "iPhone5/#{"About to submit"}.png"
browser.button(:type => 'submit').click

#browser.div(:class=> 'btn add-to-cart-detail').click                  
                
sleep 4

driver.save_screenshot "iPhone5/#{"About to submit"}.png"
browser.text_field(:name => 'phsmartphonebody_0$password').set 'zaq12wsx'
sleep 4
driver.save_screenshot "iPhone5/#{"About to submit 2"}.png"

browser.button(:type => 'submit').click

driver.save_screenshot "iPhone5/#{"About to submit 3"}.png"

sleep 4

browser.text_field(:name => 'phsmartphonebody_0$username').set 'albert.golubev@pkt1.com'

browser.text_field(:name => 'phsmartphonebody_0$password').set 'zaq12wsx'
sleep 4
browser.button(:type => 'submit').click
sleep 4
driver.save_screenshot "iPhone5/#{"About to submit 4"}.png"
sleep 4
browser.div(:class =>'pc_edit-button').when_present.click
sleep 4
driver.save_screenshot "iPhone5/#{"About to submit 5"}.png"
browser.a(:class =>'nav-open-btn').when_present.click
sleep 4
driver.save_screenshot "iPhone5/#{"About to submit 6"}.png"
puts "URL "<<counter
counter +=1

end