require 'selenium-webdriver'
require "selenium/client"
require 'csv'
require 'watir-scroll'
require 'watir-webdriver'
require 'webdriver-user-agent'

driver = Selenium::WebDriver.for :remote, :url => "http://192.168.2.2:3001/wd/hub", :desired_capabilities => :iphone

counter=0
puts "Testing in Galaxy S5"
csv_text = File.read('temp47.csv',encoding: "iso-8859-1:UTF-8")

csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc2= "#{row['image']}"
puts counter
puts loc1

driver.navigate.to loc1
#driver.scroll.to [0, 300]
#driver.goto loc1
sleep 2
driver.save_screenshot driver.title<<".png"



sleep 1


end


