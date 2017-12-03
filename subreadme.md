```ruby
require 'nokogiri'
require 'httparty'

url = "http://cafe.naver.com/jpnstory"
response = HTTParty.get(url) # url을 통해서 인터넷정보를 불러오고
doc = Nokogiri::HTML(response) # 
p doc
```

### [p response]
url을 통해 정보를 불러온다.

```ruby
#<HTTParty::Response:0x2113468 parsed_response="
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"
http://www.w3.org/TR/html4/loose.dtd\">\r\n\r\n<html lang=\"ko\">\r\n
<head>\r\n<meta name=\"robots\" content=\"noindex, nofollow\" />\r\n
<meta http-equiv=\"Content-Type\" content=\"text/html;charset=KSC5601\">\r\n
<meta http-equiv=\"X-UA-Compatible\" content=\"requiresActiveX=true\">\r\n
<title>\xB3\xD7\xC0\xCF\xB5\xBF : \xC0\
```


### [p doc]
XML로 파싱된 정보를 불러온다. 
<br>

```ruby
#<Nokogiri::HTML::Document:0x156f8a0 name="document" children=[
#<Nokogiri::XML::DTD:0x156f5f8 name="HTML">, #<
Nokogiri::XML::Element:0x156f314 name="html" attributes=[
#<Nokogiri::XML::Attr:0x156f2b0 name="lang" value="ko">] children=[
#<Nokogiri::XML::Text:0x156ee64 "\r\n
">, #<Nokogiri::XML::Element:0x156ed9c name="head" children=[
#<Nokogiri::XML::Text:0x156ebbc "\r\n">, #<
Nokogiri::XML::Element:0x156eb08 name="meta" attributes=[
#<Nokogiri::XML::Attr:0x156eaa4 name="name" value="robots">, #<
Nokogiri::XML::Attr:0x156ea90 name="content" value="noindex, nofollow">]>, #<
Nokogiri::XML::Text:0x156e464 "\r\n">, #<
Nokogiri::XML::Element:0x156e3b0 name="meta" attributes=[
#<Nokogiri::XML::Attr:0x156e34c name="http-equiv" value="Content-Type">, #<
Nokogiri::XML::Attr:0x156e338 name="content" value="text/html;charset=KSC5601">]>,
#<Nokogiri::XML::Text:0x156dce4 "\r\n">, 
#<Nokogiri::XML::Element:0x156dc30 name="meta" attributes=[
#<Nokogiri::XML::Attr:0x156dbcc name="http-equiv" value="X-UA-Compatible">, 
#<Nokogiri::XML::Attr:0x156dbb8 name="content" value="requiresActiveX=true">]>, 
#<Nokogiri::XML::Text:0x156d58c "\r\n">, 
#<Nokogiri::XML::Element:0x156d4d8 name="title" children=[
#<Nokogiri::XML::Text:0x156d2f8 "네일동 : 일본여행카페 : 네이버 카페">]

```

### [p text]

<br>

```ruby
#<Nokogiri::HTML::Document:0x156f8a0 name="document" children=[
#<Nokogiri::XML::DTD:0x156f5f8 name="HTML">, 
#<Nokogiri::XML::Element:0x156f314 name="html" attributes=[
#<Nokogiri::XML::Attr:0x156f2b0 name="lang" value="ko">] children=[
#<Nokogiri::XML::Text:0x156ee64 "\r\n">, 
#<Nokogiri::XML::Element:0x156ed9c name="head" children=[
#<Nokogiri::XML::Text:0x156ebbc "\r\n">, 
#<Nokogiri::XML::Element:0x156eb08 name="meta" attributes=[
#<Nokogiri::XML::Attr:0x156eaa4 name="name" value="robots">, 
#<Nokogiri::XML::Attr:0x156ea90 name="content" value="noindex, nofollow">]>, 
#<Nokogiri::XML::Text:0x156e464 "\r\n">, 
#<Nokogiri::XML::Element:0x156e3b0 name="meta" attributes=[
#<Nokogiri::XML::Attr:0x156e34c name="http-equiv" value="Content-Type">,
#<Nokogiri::XML::Attr:0x156e338 name="content" value="text/html;charset=KSC5601">]>, 
#<Nokogiri::XML::Text:0x156dce4 "\r\n">, 
#<Nokogiri::XML::Element:0x156dc30 name="meta" attributes=[
#<Nokogiri::XML::Attr:0x156dbcc name="http-equiv" value="X-UA-Compatible">, 
#<Nokogiri::XML::Attr:0x156dbb8 name="content" value="requiresActiveX=true">]>, 
#<Nokogiri::XML::Text:0x156d58c "\r\n">, 
#<Nokogiri::XML::Element:0x156d4d8 name="title" children=[
#<Nokogiri::XML::Text:0x156d2f8 "네일동 : 일본여행카페 : 네이버 카페">
```

### p text.css('title')
```html
[#<Nokogiri::XML::Element:0x364bec name="title" children=[
#<Nokogiri::XML::Text:0x361f8c "네일동 : 일본여행카페 : 네이버 카페">]>]
```