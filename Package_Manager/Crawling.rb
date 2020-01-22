require "http"
p_html = HTTP.get('https://codingeverybody.github.io/scraping_sample/1.html').to_s
p p_html
