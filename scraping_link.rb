require 'httparty'
require 'nokogiri'

url = "http://en.wikpedia.org/wiki/Kevin_Bacon"
response = HTTParty.get(url)
text = Nokogiri::HTML(response.body)
# puts text.css('a')

list = text.css('a').map {|link| link['href']} #람다식
puts list
    


# for link in text.css('a') do
#     if 'href' in link.attrs
#         pust href
#     end
# end