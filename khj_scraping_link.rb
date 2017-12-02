require 'httparty'
require 'nokogiri'

url = "http://en.wikpedia.org/wiki/Kevin_Bacon"
response = HTTParty.get(url)
text = Nokogiri::HTML(response.body)
# puts text.css('a')

# 페이지에 들어 있는 링크 목록을 가져온다. 
=begin
list = text.css('a').map {|link| link['href']} #람다식
puts list
=end

# 항목 페이지를 가리키는 링크만 가져오기
