require 'nokogiri'
require 'httparty'


# 1. url을 //기호//로 나눈다.
# 2. 기호를 제거한 url
# 정규표현식 /\W+/( \W : 영문자와 _ 제외한 문자! <- 반대 ->\w: 영문자와 _ 만!)
# 3. com. http를 array에 담아서 있으면 url에서 제거
# 4. co.kr, co.jp, 등 url 패턴 정규 표현식으로 알아보기.
# 5. url에서 최소한의 정보만 가져오기 
# url에서 정보를 가져오기에는 url정리가 엉망이다.
#(1) http 뒤에것 (http는 있을 수도 있고 없을 수도 있고)
#(2) 제일 처음 /{내용}/ 에 {내용}
#(3) .com등은 없애기
#(4) 네이버, 구글, github 중심으로 


# url
# url = "http://blog.naver.com/hostel_world/221091008465"
# url = "https://ide.c9.io/jjuya/ruby_scraping"
# url = "http://cafe.daum.net/ok1221/9fQk/60376?q=%B5%B5%C4%EC%20%BF%A9%C7%E0"
# url = "http://rubykr.github.io/rails_guides/"
url = "www.yahoo.co.jp/"
# url = "https://www.google.co.kr/"

################ 정규표현식 사용해서 ###################################





################ 최소화해서 가져오기###################################

puts url#.to_s.split(/\W+/)

puts "======================="
array = ["google", "naver", "blog", "cafe", "c9", "github", "daum"]

# url.to_s.split(/\W+/).each do |word|
#     if array.include? word
#         puts word
#     else 
#         puts ("private")
#     end
    
# end


# private이 여러개 들어오면 private을 유지하게끔
# private 이외의 값이 나왔을 때는 그것을 반환, 두개 이상이면 붙이기

findflag = false
res=""
array.each do |arr|
    # puts arr
    if url.include? arr
        # puts arr
        if res == 'private' 
            res =""
        end
        res += arr
        res += " "
        findflag = true
    else 
        # puts "private"
        res = "private" if !findflag
    end
end
puts res

    



#################array에 들어있는 단어 없애기#############################
# array = ["com", "http", "https", "io", "ide"]

# 1. url을 //기호//로 나눈다.
# 2. 기호를 제거한 url
# 정규표현식 /\W+/( \W : 영문자와 _ 제외한 문자! <- 반대 ->\w: 영문자와 _ 만!)
# 3. com. http를 array에 담아서 있으면 url에서 제거

# 4. co.kr, co.jp, 등 url 패턴 정규 표현식으로 알아보기.

# url_word = url.split(/\W+/).delete_if{ |word| array.include?(word)}.join('')

# puts url_word










####################url 정보 분리 ###### 

# url_re = 
#url.to_s.split(/\W+/).each do |word|
#   puts word 
# end
    

# puts url_re
# puts "------------"

# url_re.each do |word|
#   puts word 
# end



# regular expession 

# # I would like to remove matching items from a sentece    
# value = "one,two three:four"
# a = value.split(/\W+/)
# puts a
# one tow three four


