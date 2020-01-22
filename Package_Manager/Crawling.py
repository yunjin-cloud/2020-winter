import requests

r = requests.get('https://codingeverybody.github.io/scraping_sample/1.html')
print(r.text)
