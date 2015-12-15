require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
require 'mechanize'

#iphone 5
#driver = Selenium::WebDriver.for :remote, :url => "http://192.168.2.3:3001/wd/hub", :desired_capabilities => :iphone
#ihpone 6
driver = Selenium::WebDriver.for :remote, :url => "http://192.168.2.4:3001/wd/hub", :desired_capabilities => :iphone
agent = Mechanize.new
#driver = Selenium::WebDriver.for :remote, :url => "http://172.28.60.85:3001/wd/hub", :desired_capabilities => :iphone

browser = Watir::Browser.new driver, :switches => ['--ignore-certificate-errors']
#browser.goto "http://nesn.com"

counter=179

csv_text = File.read('oral_search1.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc2= "#{row['product']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"
sleep 1
counter-=1
browser.goto "http://author.oralb.pgsitecore.com/en-us/products/manual-toothbrushes"
#browser.goto "http://author.bountytowels.pgsitecore.com/en-us/tips-articles/knit-a-simple-autumn-cowl"
puts loc1
sleep 7
puts counter
puts browser.title
puts browser.url

#browser.goto loc1

#browser.find_element(:xpath, "//div[@id='phdesktopbody_0_divTabs']/ul/li[2]/a").click




sleep 7
driver.save_screenshot  "iPhone4S/#{"iPhone4S_search"}.png"
puts "Go to next line or stop"
sleep 3

#Sort By
browser.a(:class => 'btn sort-btn').click

driver.save_screenshot  "iPhone4S/#{"iPhone4S_sort"}.png"
puts "Go to next line or stop"
sleep 3
#Sort By Popularity
browser.link(:text =>"Product Rating").when_present.click

driver.save_screenshot  "iPhone4S/#{"Popularity"}.png"
puts "Go to next line or stop"
sleep 3
browser.a(:class => 'btn sort-btn').click
#Sort By A-Z
browser.link(:text =>"Product Name A-Z").when_present.click

driver.save_screenshot  "iPhone4S/#{"A_Z"}.png"
puts "Go to next line or stop"
sleep 3
browser.a(:class => 'btn sort-btn').click
#Sort By Z-A
browser.link(:text =>"Product Name Z-A").when_present.click

driver.save_screenshot  "iPhone4S/#{"Z_A"}.png"
puts "Go to next line or stop"
sleep 3
browser.a(:class => 'btn sort-btn').click
#Sort By A-Z
browser.link(:text =>"Price Low-High").when_present.click

driver.save_screenshot  "iPhone4S/#{"Highest Rated"}.png"
puts "Go to next line or stop"
sleep 3
browser.a(:class => 'btn sort-btn').click
sleep 3
browser.link(:text =>"Price High-Low").when_present.click

driver.save_screenshot  "iPhone4S/#{"Highest Rated"}.png"
puts "Go to next line or stop"
sleep 3
#grid view
browser.a(:class => 'grid-view').click
sleep 2
driver.save_screenshot  "iPhone4S/#{"Grid_View"}.png"
sleep 2
#Content Results
#browser.a(:id =>"phsmartphonebody_0_phsmartphonetabheader_0_anchorContentResult").when_present.click
sleep 2
#driver.save_screenshot  "iPhone4S/#{"Content"}.png"

browser.a(:class => 'btn filter-btn').click
sleep 4
driver.save_screenshot  "iPhone4S/#{"Save"}.png"
browser.span(:class => "c2").click
sleep 4
sleep 2
driver.save_screenshot  "iPhone4S/#{"Save1"}.png"


browser.a(:class => 'apply-btn btn').click

sleep 2
driver.save_screenshot  "iPhone4S/#{"Save1"}.png"
#sleep 4
#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_2_%d_%m_%Y__%H_%M_%S")}.png"


#sleep 4
#browser.a(:class => 'nav-open-btn').click
#sleep 4
#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_2_%d_%m_%Y__%H_%M_%S")}.png"
#sleep 4
#browser.scroll.to [0, 300]
#sleep 4
#browser.a(:class => 'btn sort-btn').click
#sleep 4
#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_2_%d_%m_%Y__%H_%M_%S")}.png"
#browser.link(:text =>"Price High-Low").when_present.click
#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_2_%d_%m_%Y__%H_%M_%S")}.png"
#browser.scroll.to [0, 600]

#browser.a(:class =>'forgotpwd').when_present.click
#browser.link(:text =>loc3).when_present.click

#sleep 4

#browser.text_field(:name => 'phsmartphonebody_0$username').set 'albert.golubev@pkt.com'
#sleep 4
#browser.text_field(:name => 'phsmartphonebody_0$zipcode').set '11235'

#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_iPhone5_login1_%d_%m_%Y__%H_%M_%S")}.png"
#browser.button(:type => 'submit').click

#browser.div(:class=> 'btn add-to-cart-detail').click                  
                
#sleep 4

#driver.save_screenshot "./#{Time.now.strftime("profile4S__%d_%m_%Y__%H_%M_%S")}.png"
#browser.text_field(:name => 'phsmartphonebody_0$password').set 'zaq12wsx'
#sleep 4
#driver.save_screenshot "./#{Time.now.strftime("profile4S__%d_%m_%Y__%H_%M_%S")}.png"

#browser.button(:type => 'submit').click

#driver.save_screenshot "./#{Time.now.strftime("profile4S__%d_%m_%Y__%H_%M_%S")}.png"

end