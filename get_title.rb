# head가져오기 
# title 가져오기

require 'nokogiri'
require 'httparty'


# url = "http://cafe.naver.com/jpnstory"
# url = "https://ruby-doc.org/core-2.1.1/Regexp.html"
# url = "http://woowabros.github.io/study/2016/08/16/easy_and_fun_reg_exp.html"
# url = "http://www.perl.or.kr/perl_iyagi/regexp"
# url = "http://blog.naver.com/klooktravel/221115391260"
url = "http://blog.naver.com/mjstory29/221149706360"
response = HTTParty.get(url) # url을 통해서 인터넷정보를 불러오고
text = Nokogiri::HTML(response) # 
error = Nokogiri::HTML(response).errors
puts error
text.encoding = 'euc-kr'
# text = Nokogiri::HTML(response, 'euc-kr').errors
en_text = text.css('title').text
# puts text.css('title').text
puts en_text.encoding
# .text 인코딩 기능을 같이 갖고 있다. 


# head에 title을 가져왔는데 한글이 깨진다. 

