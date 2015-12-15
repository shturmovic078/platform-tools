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
browser.goto "http://author.oralb.pgsitecore.com/en-us/create-profile"
sleep 4
puts "Browser URL is "<<browser.url
browser.text_field(:name => 'phsmartphonebody_0$grs_consumer[firstname]').set '@'
browser.button(:type => 'submit').click
browser.text_field(:name => 'phsmartphonebody_0$grs_consumer[lastname]').set '@'
browser.button(:type => 'submit').click
browser.text_field(:name => 'phsmartphonebody_0$grs_account[emails][0][address]').set '<html>'
browser.button(:type => 'submit').click
browser.text_field(:name => 'phsmartphonebody_0$grs_account[addresses][0][postalarea]').set '1'
browser.button(:type => 'submit').click


driver.save_screenshot "iPhone5S/#{"About to submit register blank"}.png"


sleep 5
browser.goto "http://int.oralb.pgsitecore.com/en-us/loginpage"
sleep 2
browser.button(:type => 'submit').click

driver.save_screenshot "iPhone5S/#{"About to submit 32323234"}.png"


browser.goto "http://int.oralb.pgsitecore.com/en-us/resetpasswordpage"
puts loc1
sleep 2
#browser.a(:id =>'phsmartphonebody_0_forgotpassword').when_present.click
#browser.goto loc1
sleep 5
driver.save_screenshot "iPhone5S/#{"Reset_Pasword"}.png"

sleep 5

#browser.scroll.to [0, 600]
#sleep 4
#browser.a(:class =>'forgotpwd').when_present.click
#browser.link(:text =>loc3).when_present.click

sleep 4

browser.text_field(:name => 'phsmartphonebody_0$username').set 'albert.golubev@pkt.com'
sleep 4
browser.text_field(:name => 'phsmartphonebody_0$zipcode').set '11235'

driver.save_screenshot "iPhone5S/#{"About to submit"}.png"
browser.button(:type => 'submit').click

#browser.div(:class=> 'btn add-to-cart-detail').click                  
                
sleep 4

driver.save_screenshot "iPhone5S/#{"About to submit"}.png"
browser.text_field(:name => 'phsmartphonebody_0$password').set 'zaq12wsx'
sleep 4
driver.save_screenshot "iPhone5S/#{"About to submit 2"}.png"

browser.button(:type => 'submit').click

driver.save_screenshot "iPhone5S/#{"About to submit 3"}.png"

sleep 4

browser.text_field(:name => 'phsmartphonebody_0$username').set 'albert.golubev@pkt.com'

browser.text_field(:name => 'phsmartphonebody_0$password').set 'zaq12wsx'
sleep 4
browser.button(:type => 'submit').click
sleep 4
driver.save_screenshot "iPhone5S/#{"About to submit 4"}.png"
sleep 4
browser.div(:class =>'pc_edit-button').when_present.click
sleep 2
driver.save_screenshot "iPhone5S/#{"About to submit 6"}.png"
browser.a(:id =>'phsmartphonebody_0_HlinkEdit').when_present.click
sleep 2
browser.text_field(:name => 'phsmartphonebody_0$grs_consumer[firstname]').set ''

browser.text_field(:name => 'phsmartphonebody_0$grs_consumer[lastname]').set ''

browser.text_field(:name => 'phsmartphonebody_0$grs_account[emails][0][address]').set ''

browser.text_field(:name => 'phsmartphonebody_0$grs_account[addresses][0][postalarea]').set ''

browser.button(:type => 'submit').click

driver.save_screenshot "iPhone5S/#{"About to submit blank"}.png"
sleep 4
driver.save_screenshot "iPhone5S/#{"About to submit 5"}.png"
browser.a(:class =>'nav-open-btn').when_present.click
sleep 4
driver.save_screenshot "iPhone5S/#{"About to submit 6"}.png"

sleep 2

browser.a(:id =>'phsmartphoneheader_0_HeaderSideMenu_phsmartphoneheadercrm_0_logOffLink').when_present.click

driver.save_screenshot "iPhone5S/#{"About to submit logout"}.png"
puts "URL "<<counter
counter +=1

end