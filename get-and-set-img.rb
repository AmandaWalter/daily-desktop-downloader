require 'open-uri'
require 'nokogiri'

def image_url(page_url = 'http://photography.nationalgeographic.com/photography/photo-of-the-day')
  html = open(page_url)
  doc = Nokogiri::HTML(html)
  src = doc.css('.primary_photo > a > img').first['src']
  "http:#{src}"
end

image_file_name = "/Users/amanda.walter/Pictures/" + image_url.split('/').last

`curl #{image_url} > #{image_file_name}`

filepath = File.path(image_file_name)


`sh /Users/amanda.walter/Development/Projects/daily_desktop_picture/ng_set.sh #{filepath}`

