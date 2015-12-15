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
browser.goto "http://author.oralb.pgsitecore.com/en-us/oral-care-topics/dental-plaque-and-tartar"
#browser.goto "http://author.bountytowels.pgsitecore.com/en-us/tips-articles/knit-a-simple-autumn-cowl"
puts loc1
sleep 1
puts counter
puts browser.title

#browser.goto loc1

#browser.find_element(:xpath, "//div[@id='phdesktopbody_0_divTabs']/ul/li[2]/a").click



#Turn on Sort Article 

driver.save_screenshot  "GalaxyS3/#{"GalaxyS3_search"}.png"
puts "Go to next line or stop"
sleep 3

#Sort By
browser.a(:class => 'btn filter-btn').click

driver.save_screenshot  "GalaxyS3/#{"GalaxyS3_filter"}.png"
puts "Go to next line or stop"
sleep 3
#Sort By Popularity
browser.span(:class => "c2").click

driver.save_screenshot  "GalaxyS3/#{"Article"}.png"
puts "Go to next line or stop"
sleep 3

browser.a(:class => 'apply-btn btn').click
sleep 3
driver.save_screenshot  "GalaxyS3/#{"ApplyFilter"}.png"


#Turn on Sort Tips

browser.a(:class => 'btn filter-btn').click

driver.save_screenshot  "GalaxyS3/#{"GalaxyS3_filter1"}.png"
puts "Go to next line or stop"
sleep 3
#Sort By Popularity


#Sort By




sleep 2
browser.span(:text => /Tip/).click

sleep 2

driver.save_screenshot  "GalaxyS3/#{"Tips"}.png"
puts "Go to next line or stop"
sleep 3

browser.a(:class => 'apply-btn btn').click
sleep 3
driver.save_screenshot  "GalaxyS3/#{"ApplyFilter1"}.png"




#Sort By
browser.a(:class => 'popular-btn pull-right').click
sleep 2
driver.save_screenshot  "GalaxyS3/#{"Before Recommended"}.png"
sleep 2
browser.span(:text => /Most Recommended/).click
sleep 2
driver.save_screenshot  "GalaxyS3/#{"Most Recommended"}.png"


#Turn off 1 Filter

#Sort By
browser.a(:class => 'btn filter-btn').click

driver.save_screenshot  "GalaxyS3/#{"GalaxyS3_filter"}.png"
puts "Go to next line or stop"
sleep 3
#Sort By Popularity
browser.span(:class => "c2").click

driver.save_screenshot  "GalaxyS3/#{"Article"}.png"
puts "Go to next line or stop"
sleep 3

browser.a(:class => 'apply-btn btn').click
sleep 3
driver.save_screenshot  "GalaxyS3/#{"ApplyFilter"}.png"






driver.quit

end