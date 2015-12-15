require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
require 'mechanize'
require 'appium_lib'
require 'time'

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

csv_text = File.read('charmin.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
loc2= "#{row['type']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"
sleep 5
puts loc1
puts loc2
browser.goto  loc1
#driver.scroll.to [0, 300]
#driver.goto loc1
sleep 2
browser.screenshot.save browser.title<<"_product.png"

#driver.scroll.to [100, 0]
sleep 2

if loc2 == "a"
puts "Inside the Article"
sleep 5
browser.a(:id=>'phdesktopbody_0_phdesktoparticlesharerecommend_1_rptSMLinks_smHyperLink_0').when_present.click


end

if loc2 == "p"

puts "Inside the Paragraph"
sleep 5
browser.a(:id =>'phdesktopbody_0_phdesktopbreadcrumbtrail_1_rptSMLinks_smHyperLink_0').when_present.click


end



     
sleep 2
puts "Url is "<<url
puts "Load url"
sleep 4



sleep 4




#browser.a(:id =>'anchrShareText').when_present.click

sleep 4




 
url = browser.a(:id =>'anchrShareText').attribute_value "href"
puts "URL is "<<url
sleep 2
browser.goto url
browser.screenshot.save browser.title<<Time.now.utc.iso8601<<"_puffs_page.png"
sleep 2

sleep 4
puts "Waited 10 seconds"

puts browser.title
sleep 5


# browser.link(:text => 'Share Link').click
puts "Share post"
puts browser.div(:text => /Share/).text
browser.div(:text => /Share/).double_click


sleep 5

browser.screenshot.save browser.title<<Time.now.utc.iso8601<<"_product.png"

sleep 4

puts "Tab 11"

browser.send_keys :tab
browser.send_keys :tab
browser.send_keys :tab
browser.send_keys :tab
browser.send_keys :tab
browser.send_keys :tab
browser.send_keys :tab
browser.send_keys :tab
browser.send_keys :tab
browser.send_keys :tab
browser.send_keys :tab


sleep 12

browser.send_keys :enter

puts "Posted 12 to look"


sleep 5
browser.goto 'https://www.facebook.com/simon.dubois.731'

sleep 7


browser.screenshot.save browser.title<<"facebook_"<<Time.now.utc.iso8601<<".png"


end

browser.quit