require "http"
#파싱하는 프로그램 nokogiri
require "nokogiri"

p_html = HTTP.get('https://codingeverybody.github.io/scraping_sample/1.html').to_s
p p_html

page = Nokogiri::HTML(p_html)
#어떻게 우리가 원하는 태그를 노코기리를 이용해 픽업해올까?

puts "Title : " + page.css('title')[0].text
puts "Article : " + page.css('div.em')[0].text
puts "================================="

p_html = HTTP.get('https://codingeverybody.github.io/scraping_sample/2.html').to_s

page = Nokogiri::HTML(p_html)
#어떻게 우리가 원하는 태그를 노코기리를 이용해 픽업해올까?

puts "Title : " + page.css('title')[0].text
puts "Article : " + page.css('div.strong')[0].text
