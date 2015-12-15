require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
require 'mechanize'

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





driver.save_screenshot  "GalaxyS3/#{"GalaxyS3_search"}.png"
puts "Go to next line or stop"
sleep 3

#Sort By
browser.a(:class => 'btn sort-btn').click

driver.save_screenshot  "GalaxyS3/#{"GalaxyS3_sort"}.png"
puts "Go to next line or stop"
sleep 3
#Sort By Popularity
browser.link(:text =>"Popularity").when_present.click

driver.save_screenshot  "GalaxyS3/#{"Popularity"}.png"
puts "Go to next line or stop"
sleep 3
browser.a(:class => 'btn sort-btn').click
#Sort By A-Z
browser.link(:text =>"Sort A to Z").when_present.click

driver.save_screenshot  "GalaxyS3/#{"A_Z"}.png"
puts "Go to next line or stop"
sleep 3
browser.a(:class => 'btn sort-btn').click
#Sort By Z-A
browser.link(:text =>"Sort Z to A").when_present.click

driver.save_screenshot  "GalaxyS3/#{"Z_A"}.png"
puts "Go to next line or stop"
sleep 3
browser.a(:class => 'btn sort-btn').click
#Sort By A-Z
browser.link(:text =>"Highest Rated").when_present.click

driver.save_screenshot  "GalaxyS3/#{"Highest Rated"}.png"
puts "Go to next line or stop"
sleep 3
#grid view
browser.a(:class => 'grid-view').click
sleep 2
driver.save_screenshot  "GalaxyS3/#{"Grid_View"}.png"
sleep 2
#Content Results
browser.a(:id =>"phsmartphonebody_0_phsmartphonetabheader_0_anchorContentResult").when_present.click
sleep 2
driver.save_screenshot  "GalaxyS3/#{"Content"}.png"

browser.goto "http://int.oralb.pgsitecore.com/en-us/search-page?term=Satin%20tape"

sleep 2

browser.div(:id =>"phsmartphonebody_0_phsmartphoneproductresults_0_RptrProductList_divAddToCart_0").when_present.click
sleep 2
driver.save_screenshot  "GalaxyS3/#{"Add_Cart"}.png"
 sleep 2

 #browser.select_list(:name, "ddlQuantity").select_value("10")

 sleep 2
driver.save_screenshot  "GalaxyS3/#{"Select_dropdown"}.png"
 sleep 3
browser.div(:class =>"btn add-to-cart").when_present.click
sleep 5
driver.save_screenshot  "GalaxyS3/#{"Added_Cart"}.png"
 sleep 5
#driver.save_screenshot browser.title<<"_landscape.png"
#driver.save_screenshot "./#{Time.now.strftime("PRODUCT_NAME_Z-A_1_%d_%m_%Y__%H_%M_%S")}.png"

browser.text_field(:name, "userContrlShoppingCartRetailerDetails$rptrRetailerDetail$ctl00$txtProductQuantity").set"2"

 sleep 2
driver.save_screenshot  "GalaxyS3/#{"update QTY"}.png"

sleep 2

browser.div(:class=> 'update-cta-container hide').click     

sleep 2

driver.save_screenshot  "GalaxyS3/#{"update QTY1"}.png"



browser.goto "http://author.oralb.pgsitecore.com/en-us/search-page?term=Care%207000"

sleep 15

browser.div(:id =>"phsmartphonebody_0_phsmartphoneproductresults_0_RptrProductList_divAddToCart_0").when_present.click
sleep 2
driver.save_screenshot  "GalaxyS3/#{"Add_Cart"}.png"
 sleep 2

 #browser.select_list(:id, "ddlQuantity").select_value("6")

 sleep 2
driver.save_screenshot  "GalaxyS3/#{"Select_dropdown 2"}.png"
 sleep 2
browser.a(:id =>"lnkAddToCart").when_present.click
sleep 5
driver.save_screenshot  "GalaxyS3/#{"Add_Cart 2"}.png"
 sleep 5


 browser.goto "http://author.oralb.pgsitecore.com/en-us/search-page?term=Doc"

sleep 2

browser.div(:id =>"phsmartphonebody_0_phsmartphoneproductresults_0_RptrProductList_divAddToCart_0").when_present.click
sleep 2
driver.save_screenshot  "GalaxyS3/#{"Add_Cart 3"}.png"
 sleep 2

 #browser.select_list(:id, "ddlQuantity").select_value("3")

 sleep 2
driver.save_screenshot  "GalaxyS3/#{"Select_dropdown 3"}.png"
 sleep 2
browser.a(:id =>"lnkAddToCart").when_present.click
sleep 5
driver.save_screenshot  "GalaxyS3/#{"Added_Cart 3"}.png"
 sleep 5

browser.a(:id =>"phsmartphonebody_0_phsmartphoneshoppingcartretailerlist_0_rptRetailerList_anchrRetailer_1").when_present.click
sleep 4
driver.save_screenshot  "GalaxyS3/#{"Added_Cart 3"}.png"
#browser.a(:class => 'nav-open-btn').click
#sleep 4
#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_2_%d_%m_%Y__%H_%M_%S")}.png"


#sleep 4
#browser.a(:class => 'header-nav-icon-on visible').click
#sleep 4
#driver.save_screenshot "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_2_%d_%m_%Y__%H_%M_%S")}.png"



#sleep 4
#browser.a(:class => 'header-nav-icon-on visible').click
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