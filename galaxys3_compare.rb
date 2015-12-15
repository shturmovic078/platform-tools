require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
require 'mechanize'

#iphone 5
#driver = Selenium::WebDriver.for :remote, :url => "http://192.168.2.3:3001/wd/hub", :desired_capabilities => :iphone
#ihpone 6
caps = Selenium::WebDriver::Remote::Capabilities.android 
caps["client"] = "Selenium::WebDriver::Remote::Http::Default.new"
caps['acceptSslCerts'] = 'true'

driver = Selenium::WebDriver.for(:remote,
  :url => "http://localhost:8080/wd/hub/",
  :desired_capabilities => caps)
driver.navigate.to "http://author.oralb.pgsitecore.com/en-us/resetpasswordpage"
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
browser.goto "http://author.oralb.pgsitecore.com/en-us/products/replacement-brush-heads#viewtype:gridview/facets:benefit=benefit-interdental-cleaning/category:replacement-brush-heads/page:1/sortby:popularity-desc/productsdisplayed:undefined/promotilesenabled:false/cwidth:3/pcwidth:/pscroll:"
#browser.goto "http://author.bountytowels.pgsitecore.com/en-us/tips-articles/knit-a-simple-autumn-cowl"
puts loc1
sleep 1
puts counter
puts browser.title
sleep 7
driver.save_screenshot  "GalaxyS3/#{"GalaxyS3_compare_page"}.png"
#browser.goto loc1

#browser.find_element(:xpath, "//div[@id='phdesktopbody_0_divTabs']/ul/li[2]/a").click

sleep 3

browser.div(:id=> 'UCProducts_rptrProductsList_divCompare_0').click     

sleep 4


browser.div(:id=> 'UCProducts_rptrProductsList_divCompare_1').click     

sleep 4
#Turn on Sort Article 

driver.save_screenshot  "GalaxyS3/#{"GalaxyS3_compare"}.png"
puts "Go to next line or stop"
sleep 3
browser.a(:id =>'phsmartphonebody_0_phsmartphonecompareresults_0_ancClearProducts').when_present.click


driver.save_screenshot  "GalaxyS3/#{"GalaxyS3_filter1"}.png"
puts "Go to next line or stop"
sleep 3



driver.quit

end