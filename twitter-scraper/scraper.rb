require 'nokogiri'
require 'open-uri'
require 'json'
require 'pp'
url = "http://twitter.com/irtefa1"
# only gets you 20 tweets. Because twitter loads only 20 tweets by default
doc = Nokogiri::HTML(open(url))

doc.css('.stream-items').each do |node|
  puts node.children.children.css('.content').children.css('.js-tweet-text').text
end

