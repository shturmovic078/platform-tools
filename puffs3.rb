require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
require 'mechanize'
require 'appium_lib'

browser = Watir::Browser.new
browser.goto 'http://facebook.com'

sleep 4
url = ""



browser.text_field(:name => 'email').set 'tester92010013@yahoo.com'
sleep 4
browser.text_field(:name => 'pass').set 'Xsw23edc!'
sleep 2
browser.button(:type=> 'submit').click

sleep 2

csv_text = File.read('puffs.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc2= "#{row['image']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"
sleep 5
puts loc1

browser.goto  loc1
#driver.scroll.to [0, 300]
#driver.goto loc1
sleep 5
browser.screenshot.save browser.title<<"_product.png"

#driver.scroll.to [100, 0]
sleep 2

browser.a(:id =>'phdesktopbody_0_phdesktopbreadcrumbtrail_1_rptSMLinks_smHyperLink_0').when_present.click

     
sleep 5
puts "Url is "<<url
puts "Load url"
sleep 4



sleep 4




#browser.a(:id =>'anchrShareText').when_present.click

sleep 4




 
url = browser.a(:id =>'anchrShareText').attribute_value "href"
puts "URL is "<<url
sleep 6
browser.goto url
browser.screenshot.save browser.title<<"_product.png"
sleep 2

sleep 10
puts "Waited 10 seconds"

puts browser.title
sleep 5


# browser.link(:text => 'Share Link').click
"Share post"
browser.link(:text => /Share Link/).wait_until_present
browser.link(:text => /Share Link/).click


sleep 15

browser.screenshot.save browser.title<<"_product.png"

end

browser.quit