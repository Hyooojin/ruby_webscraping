require 'nokogiri'
require 'httparty'

url = "http://cafe.naver.com/jpnstory"
response = HTTParty.get(url) # url을 통해서 인터넷정보를 불러오고
# doc = Nokogiri::HTML(response) # 
text = Nokogiri::HTML(response.body)
puts text.css('title')