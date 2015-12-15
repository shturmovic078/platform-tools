require 'selenium-webdriver'
require "selenium/client"
require 'csv'
require 'watir-scroll'
require 'watir-webdriver'
require 'webdriver-user-agent'
require 'io/console'
require 'ffi/aspell'
name = ""
driver = Selenium::WebDriver.for :remote, :url => "http://192.168.2.6:3001/wd/hub", :desired_capabilities => :iphone

counter=0

yes = "yes"
no  = "no"

puts "Testing in iPhone 5S"
csv_text = File.read('url_oralb.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc2= "#{row['image']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"
sleep 5
counter+=1;
puts counter
puts loc1

driver.navigate.to loc1
#driver.scroll.to [0, 300]
#driver.goto loc1

sleep 5

name = "yes"
while name=="yes"

puts "What do you want to do "
name = gets 
sleep 1
name = name.chomp
puts "Your choice "<<name



if name==yes
	puts "Yes take a screenshot"
end
puts "Choice "<<name
puts "Answer "<< yes
   puts name.eql? yes.to_s
    driver.save_screenshot "iPhone5SRegression/#{Time.now.strftime("write3_empty_%d_%m_%Y__%H_%M_%S")}.png"
    end 
   







#driver.scroll.to [100, 0]


     
sleep 1


end