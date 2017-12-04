require 'nokogiri'
require 'httparty'


# (1) url을 입력받는다.
# (2) url com 앞에 부분을 받을 수 있도록! 
# (3) http:// 제거 .com 제거


# url
url = "http://cafe.naver.com/jpnstory"
# url = "https://ide.c9.io/jjuya/ruby_scraping"

# url = "http://rubykr.github.io/rails_guides/"
# url = "www.yahoo.co.jp/"
# url = "https://www.google.co.kr/"


array = ["com", "http", "https", "io", "ide"]

# 1. url을 //기호//로 나눈다.
# 2. 기호를 제거한 url
# 정규표현식 /\W+/( \W : 영문자와 _ 제외한 문자! <- 반대 ->\w: 영문자와 _ 만!)
# 3. com. http를 array에 담아서 있으면 url에서 제거

# 4. co.kr, co.jp, 등 url 패턴 정규 표현식으로 알아보기.





    # 1. '.'으로 나눠서 url을 나눈다.

# 방법! 
url_word = url.split(/\W+/).delete_if{ |word| array.include?(word)}.join('')

puts url_word




# url_re = 
# url.to_s.split(/\W+/).each do |word|
#   puts word 
# end
    
    
    
    
    


# puts url_re
# puts "------------"

# url_re.each do |word|
#   puts word 
# end

# # I would like to remove matching items from a sentece
# setence.s


# remove word

# bad_words = ["less than", "about"]

# # bad_words.each do |bad|
# #     puts bad
# # end



# if url_re.include('com')
#     url_re.remove('com')
# end

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