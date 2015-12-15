require 'selenium-webdriver'
require "selenium/client"
require 'csv'
require 'watir-scroll'
require 'watir-webdriver'
require 'webdriver-user-agent'
require 'rubygems'
require 'appium_lib'

APP_PATH = '/Users/agolubev1/Desktop/SafariLauncher.ipa'

desired_caps = {
  caps:       {
    platformName:  'iOS',
    versionNumber: '8.4',
    deviceName:    'iPhone 6',
    app:           APP_PATH,
    udid: '03aad7cc56446be7adccca4988873313ad951969',
    url: 'http://0.0.0.0:4723/wd/hub',
autoWebview: 'true',
safariAllowPopups: 'failse',
safariIgnoreFraudWarning: 'true',

   
  },
  
}
driver = Appium::Driver.new(desired_caps)
driver = driver.start_driver 
# Start the driver


csv_text = File.read('review_all.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
loc2= "#{row['type']}"
loc3= "#{row['name']}"
#loc4= "#{row['count']}"
sleep 15
puts "I will go to URL in 25 seconds"
sleep 15
driver.get loc1
puts loc1
#driver.goto loc1
sleep 15
driver.save_screenshot  "WriteReview/#{Time.now.strftime("write_review_%d_%m_%Y__%H_%M_%S")}.png"
driver.scroll.to [0,950]
sleep 4

driver.div(:class =>'btn write-review').when_present.click
#driver.a(:id=>'phsmartphonebody_0_phsmartphoneproductprimarycontentarea_0_lnkWriteAReview').click
#driver.link(:text =>"WRITE A REVIEW").when_present.click
sleep 4
#driver.screenshot.save  "WriteReview/#{Time.now.strftime("write_review_popup_1_%d_%m_%Y__%H_%M_%S")}.png"

sleep 4
#driver.screenshot.save  "WriteReview/#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_1_%d_%m_%Y__%H_%M_%S")}.png"
driver.div(:id=> 'phsmartphonebody_0_divOverallRatingInput').click
sleep 2
#driver.div(:id=> 'phdesktopbody_0_phdesktopproductratingreview_0_rptProductReview_rblControlForProductReview_0_0_0').click
if loc2.eql?("yes")
 puts "yes is"
driver.radio(:value => 'Yes').set
end

sleep 2 

if loc3.eql?("crest")
 puts "yes it's crest"
driver.text_field(:name => 'phsmartphonebody_0$rptProductReview$ctl01$txtControlForProductReview').set 'Product Review 1'
driver.text_field(:name => 'phsmartphonebody_0$rptProductReview$ctl02$textareaControlForProductReview').set "Product Review 1 this is a QA product a great product again to use I repeat all of this text"
else
	driver.text_field(:name => 'phsmartphonebody_0$rptProductReview$ctl00$txtControlForProductReview').set 'Product Review 1'
	driver.text_field(:name => 'phsmartphonebody_0$rptProductReview$ctl01$textareaControlForProductReview').set "Product Review 1 this is a QA product a great product again to use I repeat all of this text "
end


sleep 2

driver.text_field(:name => 'phsmartphonebody_0$rptProfileInformation$ctl00$txtControl').set 'QANickTester'
driver.text_field(:name => 'phsmartphonebody_0$rptProfileInformation$ctl01$txtControl').set 'Brooklyn,NY'
sleep 2
driver.scroll.to [0,350]
puts "10 seconds to add date and month"
sleep 2
driver.select_list(:name => 'phsmartphonebody_0$rptProfileInformation$ctl02$ddlControl').select '10'
driver.select_list(:name => 'phsmartphonebody_0$rptProfileInformation$ctl03$ddlControl').select '1978'

sleep 2

driver.text_field(:name => 'phsmartphonebody_0$rptProfileInformation$ctl04$txtControl').set 'albert.golubev@pkt.com'
driver.checkbox(:name => 'phsmartphonebody_0$chkAgree').click

#driver.screenshot.save  "WriteReview/#{Time.now.strftime("mobile_portrait_Preview_1_%d_%m_%Y__%H_%M_%S")}.png"

driver.button(:name => 'phsmartphonebody_0$ibtnPreview').click

sleep 2

#driver.screenshot.save  "WriteReview/#{Time.now.strftime("mobile_portrait_Preview_1_%d_%m_%Y__%H_%M_%S")}.png"
sleep 2

#driver.button(:name => 'phsmartphonebody_0$ibtnSubmit').click
#--------------------------------------------------------------------------------------------------------
##driver.screenshot.save  "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_2_%d_%m_%Y__%H_%M_%S")}.png"
#sleep 4
#driver.scroll.to [0, 300]
#sleep 4
#driver.a(:class => 'btn sort-btn').click
#sleep 4
##driver.screenshot.save  "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_2_%d_%m_%Y__%H_%M_%S")}.png"
#driver.link(:text =>"Price High-Low").when_present.click
##driver.screenshot.save  "./#{Time.now.strftime("mobile_portrait_shop_products_iPhone5_2_%d_%m_%Y__%H_%M_%S")}.png"
#driver.scroll.to [0, 600]
sleep 4
#--------------------------------------------------------------------------------------------------------
#driver.button(:name => 'phsmartphonebody_0$ibtnSubmit').click
#driver.a(:class =>'btn write-review').when_present.click
#driver.link(:text =>loc3).when_present.click

#sleep 4

#driver.text_field(:name => 'phsmartphonebody_0$username').set 'albert.golubev@pkt.com'
#sleep 4
#driver.text_field(:name => 'phsmartphonebody_0$zipcode').set '11235'

##driver.screenshot.save  "./#{Time.now.strftime("mobile_portrait_iPhone5_login1_%d_%m_%Y__%H_%M_%S")}.png"
#driver.button(:type => 'submit').click

#driver.div(:class=> 'btn add-to-cart-detail').click                  
                
#sleep 4

##driver.screenshot.save  "./#{Time.now.strftime("profile4S__%d_%m_%Y__%H_%M_%S")}.png"
#driver.text_field(:name => 'phsmartphonebody_0$password').set 'zaq12wsx'
#sleep 4
##driver.screenshot.save  "./#{Time.now.strftime("profile4S__%d_%m_%Y__%H_%M_%S")}.png"

#driver.button(:type => 'submit').click

##driver.screenshot.save  "./#{Time.now.strftime("profile4S__%d_%m_%Y__%H_%M_%S")}.png"
puts "URL "<<counter
counter +=1

end