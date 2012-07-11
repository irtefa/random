require 'nokogiri'
require 'open-uri'

url = "http://www.hyperink.com/Make-Something-People-Love-Lessons-From-A-Startup-Guy-b1478"

doc = Nokogiri::HTML(open(url))

puts doc.at_css('.price').text
