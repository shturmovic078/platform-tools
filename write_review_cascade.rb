require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
require 'mechanize'
require 'appium_lib'



caps = Selenium::WebDriver::Remote::Capabilities.android  
client = Selenium::WebDriver::Remote::Http::Default.new  
client.timeout = 480  
driver = Selenium::WebDriver.for(  
  :remote,  
  :url => "http://localhost:8080/wd/hub/",  
  :http_client => client,  
  :desired_capabilities => caps)  

counter=0
browser = Watir::Browser.new driver;


csv_text = File.read('login.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc2= "#{row['product']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"

sleep 5


sleep 5
browser.goto "https://cascadeclean.com/en-us/gel-lemonburst-scent/writereview"
sleep 9

sleep 4


#browser.scroll.to [0,850]
#sleep 4
driver.save_screenshot "Cascade/#{Time.now.strftime("write_empty_%d_%m_%Y__%H_%M_%S")}.png"

#browser.link(:text =>"Write A Review").when_present.click
sleep 8


browser.scroll.to [0,850]
puts"8 to click"
sleep 8
#browser.div(:class =>'RatingsReviewPreviewValidation btn-war-preview event_preview_review').when_present.click

driver.save_screenshot "Cascade/#{Time.now.strftime("write_empty_%d_%m_%Y__%H_%M_%S")}.png"


sleep 39


driver.save_screenshot "Cascade/#{Time.now.strftime("write_empty_%d_%m_%Y__%H_%M_%S")}.png"

driver.save_screenshot "Cascade/#{Time.now.strftime("write_review_popup_1_%d_%m_%Y__%H_%M_%S")}.png"

sleep 4
driver.save_screenshot "Cascade/#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_1_%d_%m_%Y__%H_%M_%S")}.png"
browser.div(:id=> 'phsmartphonebody_0_divOverallRatingInput').click
sleep 4
browser.div(:id=> 'phsmartphonebody_0_rptSecondaryRatingWrite_divRatingBlocksInputStyle_1').click
sleep 4
browser.div(:id=> 'phsmartphonebody_0_rptSecondaryRatingWrite_divRatingBlocksInputStyle_0').click
browser.radio(:value => 'Yes').set
sleep 2 
browser.text_field(:name => 'phsmartphonebody_0$rptProductReview$ctl00$txtControlForProductReview').set 'I would like to purchase this item again yeah'
browser.text_field(:name => 'phsmartphonebody_0$rptProductReview$ctl01$textareaControlForProductReview').set "Product Review 1 this is a QA product a great product again to use I repeat all of this text all over again .... This is a QA Test this is a preview of the test AQ "
browser.text_field(:name => 'phsmartphonebody_0$rptProfileInformation$ctl00$txtControl').set 'QANickTester'
browser.text_field(:name => 'phsmartphonebody_0$rptProfileInformation$ctl01$txtControl').set 'Brooklyn,NY'
sleep 2
browser.scroll.to [0,350]
puts "10 seconds to add date and month"
sleep 10




browser.text_field(:name => 'phsmartphonebody_0$rptProfileInformation$ctl04$txtControl').set 'albert.golubev@pkt.com'
browser.checkbox(:name => 'phsmartphonebody_0$chkAgree').click



browser.button(:name => 'phsmartphonebody_0$ibtnPreview').click

sleep 2

driver.save_screenshot "Cascade/#{Time.now.strftime("mobile_portrait555_Preview_1_%d_%m_%Y__%H_%M_%S")}.png"
sleep 2

browser.button(:name => 'phsmartphonebody_0$ibtnSubmit').click
#driver.save_screenshot "Cascade/#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_2_%d_%m_%Y__%H_%M_%S")}.png"
#sleep 4
#browser.scroll.to [0, 300]
#sleep 4
#browser.a(:class => 'btn sort-btn').click
#sleep 4
#driver.save_screenshot "Cascade/#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_2_%d_%m_%Y__%H_%M_%S")}.png"
#browser.link(:text =>"Price High-Low").when_present.click
#driver.save_screenshot "Cascade/#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_2_%d_%m_%Y__%H_%M_%S")}.png"
#browser.scroll.to [0, 600]
sleep 4
browser.scroll.to [0,750]
sleep 2
browser.select_list(:id => 'phsmartphonebody_0_rptProfileInformation_ddlControl_2').select_value("10")
browser.select_list(:id => 'phsmartphonebody_0_rptProfileInformation_ddlControl_3').select_value("1978")
sleep 4
browser.button(:name => 'phsmartphonebody_0$ibtnPreview').click

sleep 2

driver.save_screenshot "Cascade/#{Time.now.strftime("write2_empty_%d_%m_%Y__%H_%M_%S")}.png"


sleep 4
#browser.button(:name => 'phsmartphonebody_0$ibtnSubmit').click

sleep 2

driver.save_screenshot "Cascade/#{Time.now.strftime("write3_empty_%d_%m_%Y__%H_%M_%S")}.png"


sleep 4
#browser.button(:name => 'phsmartphonebody_0$ibtnConti').click

sleep 2

driver.save_screenshot "Cascade/#{Time.now.strftime("write4_empty_%d_%m_%Y__%H_%M_%S")}.png"


#browser.a(:class =>'btn write-review').when_present.click
#browser.link(:text =>loc3).when_present.click

#sleep 4

#browser.text_field(:name => 'phsmartphonebody_0$username').set 'albert.golubev@pkt.com'
#sleep 4
#browser.text_field(:name => 'phsmartphonebody_0$zipcode').set '11235'

#driver.save_screenshot "Cascade/#{Time.now.strftime("mobile_portrait_iPhone5_login1_%d_%m_%Y__%H_%M_%S")}.png"
#browser.button(:type => 'submit').click

#browser.div(:class=> 'btn add-to-cart-detail').click                  
                
#sleep 4

#driver.save_screenshot "Cascade/#{Time.now.strftime("profile4S__%d_%m_%Y__%H_%M_%S")}.png"
#browser.text_field(:name => 'phsmartphonebody_0$password').set 'zaq12wsx'
#sleep 4
#driver.save_screenshot "Cascade/#{Time.now.strftime("profile4S__%d_%m_%Y__%H_%M_%S")}.png"

#browser.button(:type => 'submit').click

#driver.save_screenshot "Cascade/#{Time.now.strftime("profile4S__%d_%m_%Y__%H_%M_%S")}.png"
puts "URL "<<counter
counter +=1

end