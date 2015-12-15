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

browser = Watir::Browser.new driver
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
browser.goto loc1
#browser.goto "http://author.bountytowels.pgsitecore.com/en-us/tips-articles/knit-a-simple-autumn-cowl"
puts loc1
sleep 1
puts counter
puts browser.title

#browser.goto loc1

#browser.find_element(:xpath, "//div[@id='phdesktopbody_0_divTabs']/ul/li[2]/a").click





driver.save_screenshot  "iPhone5S/#{"iPhone5S_search"}.png"
puts "Go to next line or stop"
sleep 3

#Sort By
browser.a(:class => 'btn sort-btn').click

driver.save_screenshot  "iPhone5S/#{"iPhone5S_sort"}.png"
puts "Go to next line or stop"
sleep 3
#Sort By Popularity
browser.link(:text =>"Popularity").when_present.click

driver.save_screenshot  "iPhone5S/#{"Popularity"}.png"
puts "Go to next line or stop"
sleep 3
browser.a(:class => 'btn sort-btn').click
#Sort By A-Z
browser.link(:text =>"Sort A to Z").when_present.click

driver.save_screenshot  "iPhone5S/#{"A_Z"}.png"
puts "Go to next line or stop"
sleep 3
browser.a(:class => 'btn sort-btn').click
#Sort By Z-A
browser.link(:text =>"Sort Z to A").when_present.click

driver.save_screenshot  "iPhone5S/#{"Z_A"}.png"
puts "Go to next line or stop"
sleep 3
browser.a(:class => 'btn sort-btn').click
#Sort By A-Z
browser.link(:text =>"Highest Rated").when_present.click

driver.save_screenshot  "iPhone5S/#{"Highest Rated"}.png"
puts "Go to next line or stop"
sleep 3
#grid view
browser.a(:class => 'grid-view').click
sleep 2
driver.save_screenshot  "iPhone5S/#{"Grid_View"}.png"
sleep 2
#Content Results
browser.a(:id =>"phsmartphonebody_0_phsmartphonetabheader_0_anchorContentResult").when_present.click
sleep 2
driver.save_screenshot  "iPhone5S/#{"Content"}.png"

browser.goto "http://int.oralb.pgsitecore.com/en-us/search-page?term=Satin%20tape"

sleep 2

browser.a(:class =>"add-to-cart-btn btn ").when_present.click
sleep 2
driver.save_screenshot  "iPhone5S/#{"Add_Cart"}.png"

#driver.save_screenshot browser.title<<"_landscape.png"
#driver.save_screenshot "./#{Time.now.strftime("PRODUCT_NAME_Z-A_1_%d_%m_%Y__%H_%M_%S")}.png"
sleep 2

 browser.select_list(:id, "ddlQuantity").select_value("10")

 sleep 2
driver.save_screenshot  "iPhone5S/#{"Select_dropdown"}.png"
 sleep 2
browser.a(:id =>"lnkAddToCart").when_present.click
sleep 5
driver.save_screenshot  "iPhone5S/#{"Added_Cart"}.png"
 sleep 5







#browser.a(:class => 'nav-open-btn').click
#sleep 4
#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5S_2_%d_%m_%Y__%H_%M_%S")}.png"


#sleep 4
#browser.a(:class => 'header-nav-icon-on visible').click
#sleep 4
#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5S_2_%d_%m_%Y__%H_%M_%S")}.png"



#sleep 4
#browser.a(:class => 'header-nav-icon-on visible').click
#sleep 4
#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5S_2_%d_%m_%Y__%H_%M_%S")}.png"


#sleep 4
#browser.a(:class => 'nav-open-btn').click
#sleep 4
#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5S_2_%d_%m_%Y__%H_%M_%S")}.png"
#sleep 4
#browser.scroll.to [0, 300]
#sleep 4
#browser.a(:class => 'btn sort-btn').click
#sleep 4
#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5S_2_%d_%m_%Y__%H_%M_%S")}.png"
#browser.link(:text =>"Price High-Low").when_present.click
#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5S_2_%d_%m_%Y__%H_%M_%S")}.png"
#browser.scroll.to [0, 600]

#browser.a(:class =>'forgotpwd').when_present.click
#browser.link(:text =>loc3).when_present.click

#sleep 4

#browser.text_field(:name => 'phsmartphonebody_0$username').set 'albert.golubev@pkt.com'
#sleep 4
#browser.text_field(:name => 'phsmartphonebody_0$zipcode').set '11235'

#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_iPhone5S_login1_%d_%m_%Y__%H_%M_%S")}.png"
#browser.button(:type => 'submit').click

#browser.div(:class=> 'btn add-to-cart-detail').click                  
                
#sleep 4

#driver.save_screenshot "./#{Time.now.strftime("profile5__%d_%m_%Y__%H_%M_%S")}.png"
#browser.text_field(:name => 'phsmartphonebody_0$password').set 'zaq12wsx'
#sleep 4
#driver.save_screenshot "./#{Time.now.strftime("profile5__%d_%m_%Y__%H_%M_%S")}.png"

#browser.button(:type => 'submit').click

#driver.save_screenshot "./#{Time.now.strftime("profile5__%d_%m_%Y__%H_%M_%S")}.png"

end