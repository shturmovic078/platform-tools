require 'selenium-webdriver'
require "selenium/client"
require 'csv'
require 'watir-scroll'
require 'watir-webdriver'
require 'webdriver-user-agent'

driver= Selenium::WebDriver.for :remote, :desired_capabilities => :android

counter=0
browser = Watir::Browser.new driver

csv_text = File.read('review_all.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
loc2= "#{row['type']}"
loc3= "#{row['name']}"
#loc4= "#{row['count']}"
sleep 5
browser.goto loc1
puts loc1
#browser.goto loc1
sleep 4
driver.save_screenshot "WriteReview/#{Time.now.strftime("write_review_%d_%m_%Y__%H_%M_%S")}.png"



browser.scroll.to [0,1000]
sleep 4

browser.div(:class =>'btn write-review').when_present.click
#browser.a(:id=>'phsmartphonebody_0_phsmartphoneproductprimarycontentarea_0_lnkWriteAReview').click
#browser.link(:text =>"WRITE A REVIEW").when_present.click
sleep 4
driver.save_screenshot "WriteReview/#{Time.now.strftime("write_review_popup_1_%d_%m_%Y__%H_%M_%S")}.png"

sleep 4
driver.save_screenshot "WriteReview/#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_1_%d_%m_%Y__%H_%M_%S")}.png"
browser.div(:id=> 'phsmartphonebody_0_divOverallRatingInput').click
sleep 2
#browser.div(:id=> 'phdesktopbody_0_phdesktopproductratingreview_0_rptProductReview_rblControlForProductReview_0_0_0').click
if loc2.eql?("yes")
 puts "yes is"
browser.radio(:value => 'Yes').set
end

sleep 2 

if loc3.eql?("crest")
 puts "yes it's crest"
browser.text_field(:name => 'phsmartphonebody_0$rptProductReview$ctl01$txtControlForProductReview').set 'Product Review 1'
browser.text_field(:name => 'phsmartphonebody_0$rptProductReview$ctl02$textareaControlForProductReview').set "Product Review 1 this is a QA product a great product again to use I repeat all of this text"
else
	browser.text_field(:name => 'phsmartphonebody_0$rptProductReview$ctl00$txtControlForProductReview').set 'Product Review 1'
	browser.text_field(:name => 'phsmartphonebody_0$rptProductReview$ctl01$textareaControlForProductReview').set "Product Review 1 this is a QA product a great product again to use I repeat all of this text "
end


sleep 2

browser.text_field(:name => 'phsmartphonebody_0$rptProfileInformation$ctl00$txtControl').set 'QANickTester'
browser.text_field(:name => 'phsmartphonebody_0$rptProfileInformation$ctl01$txtControl').set 'Brooklyn,NY'
sleep 2
browser.scroll.to [0,350]
puts "10 seconds to add date and month"
sleep 2
browser.select_list(:name => 'phsmartphonebody_0$rptProfileInformation$ctl02$ddlControl').select '10'
browser.select_list(:name => 'phsmartphonebody_0$rptProfileInformation$ctl03$ddlControl').select '1978'

sleep 2

browser.text_field(:name => 'phsmartphonebody_0$rptProfileInformation$ctl04$txtControl').set 'albert.golubev@pkt.com'
browser.checkbox(:name => 'phsmartphonebody_0$chkAgree').click

driver.save_screenshot "WriteReview/#{Time.now.strftime("mobile_portrait_Preview_1_%d_%m_%Y__%H_%M_%S")}.png"

browser.button(:name => 'phsmartphonebody_0$ibtnPreview').click

sleep 2

driver.save_screenshot "WriteReview/#{Time.now.strftime("mobile_portrait_Preview_1_%d_%m_%Y__%H_%M_%S")}.png"
sleep 2

#browser.button(:name => 'phsmartphonebody_0$ibtnSubmit').click
#--------------------------------------------------------------------------------------------------------
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
sleep 4
#--------------------------------------------------------------------------------------------------------
#browser.button(:name => 'phsmartphonebody_0$ibtnSubmit').click
#browser.a(:class =>'btn write-review').when_present.click
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
puts "URL "<<counter
counter +=1

end