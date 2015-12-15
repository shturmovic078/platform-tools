require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
require 'mechanize'

#iphone 5
#driver = Selenium::WebDriver.for :remote, :url => "http://192.168.2.3:3001/wd/hub", :desired_capabilities => :iphone
#ihpone 6
driver = Selenium::WebDriver.for :remote, :url => "http://192.168.2.6:3001/wd/hub", :desired_capabilities => :iphone
agent = Mechanize.new
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
browser.goto "http://int.oralb.pgsitecore.com/en-us/products/manual-toothbrushes"
#browser.goto "http://author.bountytowels.pgsitecore.com/en-us/tips-articles/knit-a-simple-autumn-cowl"
puts loc1
sleep 1
puts counter
puts browser.title

#browser.goto loc1

#browser.find_element(:xpath, "//div[@id='phdesktopbody_0_divTabs']/ul/li[2]/a").click


sleep 15


driver.save_screenshot  "iPhone4S/#{"iPhone4S_search1"}.png"
puts "Go to next line or stop"
sleep 3



sleep 15


driver.save_screenshot  "iPhone4S/#{"iPhone4S_search2"}.png"
puts "Go to next line or stop"
sleep 3



sleep 15


driver.save_screenshot  "iPhone4S/#{"iPhone4S_search3"}.png"
puts "Go to next line or stop"
sleep 3

#sleep 4


end