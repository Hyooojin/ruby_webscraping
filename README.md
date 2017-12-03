# Regular Expression

ruby split: [http://blog.naver.com/santa_croce/221153756164](http://blog.naver.com/santa_croce/221153756164) <br>

a Ruby regular expression editor [http://rubular.com/](http://rubular.com/) <br>

url에서 필요한 정보만 빼오고 싶다. 
1. url 가져오기
2. 필요한 정보를 가져오기
3. http:// .com등 제거

## 1. split()

### [Regex] \W+ 
one or more non-word characters

```ruby
value = "one,two three:four"
a = value.split(/\W+/)
puts a
```
<br>

output

```
one
two
three
four
```
### 1.get_url

```ruby
url = "http://cafe.naver.com/jpnstory"
    # 1. '.'으로 나눠서 url을 나눈다.
url_re = url.to_s.split(/\W+/)    
puts url_re
```
<br>

output
```
http
cafe
naver
com
jpnstory
```