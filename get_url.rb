require 'nokogiri'
require 'httparty'


# (1) url을 입력받는다.
# (2) url com 앞에 부분을 받을 수 있도록! 
# (3) http:// 제거 .com 제거



url = "http://cafe.naver.com/jpnstory"
    # 1. '.'으로 나눠서 url을 나눈다.
url_re = url.to_s.split(/\W+/)    
puts url_re

# regular expession
    # re 1
    
# value = "one,two three:four"
# a = value.split(/\W+/)
# puts a

# one tow three four




# response = HTTParty.get(url) # url을 통해서 인터넷정보를 불러오고
# doc = Nokogiri::HTML(response) # 
# text = Nokogiri::HTML(response.body)
# p text.css('title')