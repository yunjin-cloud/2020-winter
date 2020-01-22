import requests
from bs4 import BeautifulSoup

r = requests.get('https://codingeverybody.github.io/scraping_sample/1.html')

#크롤링 분석
soup = BeautifulSoup(r.text, 'html.parser')
print('Title : ' + soup.title.string) #string 안 붙이면 태그까지 다 출력, string 붙여주면 내용까지 출력

articles = soup.findAll('div', {'class' : 'em'})
#이 페이지의 모든 div 중 class 값이 em인 애를 추출
print(articles)
print(articles[0]) #[] 여기 묶여 나오니 배열이겠거니
print(articles[0].text) #정보만
print('Article : ' + articles[0].text)

print("======================================")

r2 = requests.get('https://codingeverybody.github.io/scraping_sample/2.html')
soup = BeautifulSoup(r2.text, 'html.parser')
print('Title : ' + soup.title.string)
articles2 = soup.findAll('div', {'class' : 'strong'})
#저 페이지에선 class 값이 strong임
print('Article : ' + articles2[0].text)
