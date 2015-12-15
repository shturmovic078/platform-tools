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
module Watir
    class Element
        def list_attributes
            attributes = browser.execute_script(%Q[
                var s = [];
                var attrs = arguments[0].attributes;
                for (var l = 0; l < attrs.length; ++l) {
                    var a = attrs[l]; s.push(a.name + ': ' + a.value); 

                } ;

                
                	

                return s;], 
                self )  

            
                    puts "URL is  "<<s

        end

    end
end



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
e1 = browser.a(:id =>'anchrShareText')

puts e1.list_attributes
sleep 15




#browser.a(:id =>'anchrShareText').when_present.click

sleep 4


sleep 5

puts url 
sleep 6
browser.go to url
browser.screenshot.save browser.title<<"_product.png"
sleep 2

sleep 10
puts "Waited 10 seconds"

puts browser.title
sleep 5


 browser.link(:text => 'Share Link').click




sleep 15

browser.screenshot.save browser.title<<"_product.png"

end

browser.quit