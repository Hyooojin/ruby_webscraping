require 'nokogiri'
require 'httparty'
require 'open-uri'
require 'css'


#0
# url = "http://en.wikpedia.org/wiki/Kevin_Bacon"
# response = HTTParty.get(url)
# text = Nokogiri::HTML(response.body)
# puts text.css('a')

# 페이지에 들어 있는 링크 목록을 가져온다. 
=begin
list = text.css('a').map {|link| link['href']} #람다식
puts list
=end




#1 dataquest
#url = "https://www.dataquest.io/m/1/python-basics/12/next-steps"

# response = HTTParty.get(url)
# text = Nokogiri::HTML(response.body)
# puts text


# 페이지에 들어 있는 링크 목록을 가져온다. 

# list = text.css('div').map {|content| content['p']} #람다식
# puts list



# #2 yahoo

# #url = 'http://www.yahoo.co.jp/'
# #url = 'https://www.naver.com/'
# url = 'https://www.daum.net/'
# charset = nil
# html = open(url) do |f|
#   charset = f.charset
#   f.read
# end
# # 파싱해서 오브젝트를 생성한다.
# doc = Nokogiri::HTML.parse(html, nil, charset)

# # title 표시
# puts doc.text

# #3 From a String
# # HTML
# html_doc = Nokogiri::HTML('<html><body><h1>Mr. Belvedere Fan Club</h1></body></html>')
# puts html_doc
# puts (html_doc).text


# # XML
# xml_doc = Nokogiri::XML("<root><aliens><alien><name>Alf</name></alien></aliens></roots>")
# puts xml_doc
# puts (xml_doc).text

# # Internet
# doc = Nokogiri::HTML(open('http://www.threescompany.com'))
# puts doc
# puts (doc).text

# # stackoverflow
# doc = Nokogiri::HTML(open('https://stackoverflow.com/questions/46466814/remove-all-html-tags-from-a-html-body-except-a-br-b-and-img'))
# puts doc
# puts (doc).text

# google
# doc = Nokogiri::HTML(open('https://www.google.co.kr/search?q=nokogiri&oq=nokogiri&aqs=chrome..69i57j69i60j0l4.1449j0j8&sourceid=chrome&ie=UTF-8'))
# puts doc
# puts (doc).text

# # 0
# doc = Nokogiri::HTML(open('https://junee01.gitbooks.io/scraping-with-nokogiri-tutorial/content/chapter5.html'))
# # puts doc
# puts doc

#1
# url = "https://junee01.gitbooks.io/scraping-with-nokogiri-tutorial/content/chapter5.html"
# url = http://ruby.bastardsbook.com/chapters/html-parsing/ # error
# url = https://wikidocs.net/4308 #error
# url = https://www.tutorialspoint.com/python/list_append.htm
# url = https://github.com/thomasfl/open-uri-and-write #error # git에서 이름을 어떻게 ... 
# url = "http://cafe.naver.com/jpnstory"
url = "http://cafe.naver.com/jpnstory"


response = HTTParty.get(url)
p response
#2
# text = Nokogiri::HTML(response)
# puts text#.css('head')

#3
text = Nokogiri::HTML(response.body)
puts text #.css('h1')

#4
# puts text.css('body').css('h1')
# puts text.css('body').css('h2')
# puts text.css('body').css('h3')
# puts text.css('body').css('h4')
# puts text.css('body').css('p')


#5
# puts text.css('body').css('h3')


#6







# test.css('body').css('h3').each |h3| do
#     puts h3
# end

# url = "https://junee01.gitbooks.io/scraping-with-nokogiri-tutorial/content/chapter5.html"
# response = HTTParty.get(url)
# text = Nokogiri::HTML(response.body)
# puts text.css('#왜-노코기리nokogiri를-사용하는가')

#6


