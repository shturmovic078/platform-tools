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
    url: '',
autoWebview: 'true',
safariAllowPopups: 'failse',
safariIgnoreFraudWarning: 'true',

   
  },
}
def server_url
  "http://0.0.0.0:4723/wd/hub"
end
def selenium
  @driver ||= Selenium::WebDriver.for(:remote, :desired_caps => caps, :url => server_url)
  @driver = driver.start_driver 
  sleep 20
end



# Start the driver


csv_text = File.read('login.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc2= "#{row['product']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"


puts "Wait 20 seconds"

sleep 20




sleep 5
driver.get "https://www.bountytowels.com/en-us/loginpage"
sleep 2
driver.find_element(:name => 'phsmartphonebody_0$submit').click

driver.save_screenshot "Bounty/iPhone6/#{"About to submit "}.png"

sleep 2

#driver.hide_keyboard
driver.get "https://bountytowels.com/en-us/resetpasswordpage"
puts loc1
sleep 2
#driver.a(:id =>'phsmartphonebody_0_forgotpassword').when_present.click
#driver.get loc1
sleep 5
driver.save_screenshot "Bounty/iPhone6/#{"Reset_Pasword"}.png"

sleep 5

#driver.scroll.to [0, 600]
#sleep 4
#driver.a(:class =>'forgotpwd').when_present.click
#driver.link(:text =>loc3).when_present.click

sleep 4
driver.get "https://bountytowels.com/en-us/reset-password"
sleep 4
driver.find_element(:name => 'phsmartphonebody_0$username').send_keys 'albert.golubev@pkt.com'
sleep 4
driver.find_element(:name => 'phsmartphonebody_0$zipcode').send_keys '11235'

driver.save_screenshot "Bounty/iPhone6/#{"About to submit"}.png"
driver.find_element(:name => 'phsmartphonebody_0$submit').click

#driver.div(:class=> 'btn add-to-cart-detail').click                  
                
sleep 4

driver.save_screenshot "Bounty/iPhone6/#{"About to submit"}.png"
driver.find_element(:name => 'phsmartphonebody_0$password').send_keys 'zaq12wsx'
sleep 4
driver.save_screenshot "Bounty/iPhone6/#{"About to submit 2"}.png"

driver.find_element(:name => 'phsmartphonebody_0$submit').click

driver.save_screenshot "Bounty/iPhone6/#{"About to submit 3"}.png"

sleep 4

driver.find_element(:name => 'phsmartphonebody_0$username').send_keys 'albert.golubev@pkt.com'

driver.find_element(:name => 'phsmartphonebody_0$password').send_keys 'zaq12wsx'
sleep 4
driver.find_element(:name => 'phsmartphonebody_0$submit').click
sleep 4
driver.save_screenshot "Bounty/iPhone6/#{"About to submit 4"}.png"
sleep 4
driver.div(:class =>'pc_edit-button').when_present.click
sleep 2
driver.save_screenshot "Bounty/iPhone6/#{"About to submit 6"}.png"
sleep 2
#driver.a(:id =>'phsmartphonebody_0_HlinkEdit').when_present.click
sleep 2
driver.find_element(:name => 'phsmartphonebody_0$grs_consumer[firstname]').send_keys ''

driver.find_element(:name => 'phsmartphonebody_0$grs_consumer[lastname]').send_keys ''

driver.find_element(:name => 'phsmartphonebody_0$grs_account[emails][0][address]').send_keys ''

driver.find_element(:name => 'phsmartphonebody_0$grs_account[addresses][0][postalarea]').send_keys ''

driver.find_element(:name => 'submit').click

driver.save_screenshot "Bounty/iPhone6/#{"About to submit blank"}.png"
sleep 4
driver.save_screenshot "Bounty/iPhone6/#{"About to submit 5"}.png"
driver.a(:class =>'nav-open-btn').when_present.click
sleep 4
driver.save_screenshot "Bounty/iPhone6/#{"About to submit 6"}.png"

sleep 2

driver.a(:id =>'phsmartphoneheader_0_HeaderSideMenu_phsmartphoneheadercrm_0_logOffLink').when_present.click

driver.save_screenshot "Bounty/iPhone6/#{"About to submit logout"}.png"
puts "URL "<<counter
counter +=1

end

driver.quit