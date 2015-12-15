require 'selenium-webdriver'
require "selenium/client"
require 'csv'
require 'watir-scroll'
require 'watir-webdriver'
require 'webdriver-user-agent'
require 'io/console'
require 'spellchecker'


name = ""

browser = Watir::Browser.new :firefox
browser.goto 'http://www.lg.com/us/smart-watches'
counter=0


sleep 5

all = browser.html


text_to_check = all

puts all

results = Spellchecker.check(text_to_check)

puts results[0]


