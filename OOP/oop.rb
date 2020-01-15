name = 'yunjin'
neme = String.new('yunjin')
#둘은 완전히 같음
#String은 클래스
#string.new('yunjin')은 instance가 됨.

name2 = String.new('malatang')
#이것도 하나의 instance가 됨

puts(name.reverse())
#yunjin이 뒤집혀 나옴!
puts(name2.reverse())

#string이라는 class를 이용해, 'yunjin'과 'malatang'이라는 구체적인 정보를 담고 있는 객체를 만든 거야
#클래스는 서로 연관된 데이터와 로직들을 그룹핑해둔 것
#서로 연관된 데이터와 함수를 담고 있다.
#reverse는 string에 포함돼 있었다.

puts(name.upcase())
puts(name.size())

names = Array.new()
names.push('yunjin') #내부적으로 추가
names.push('malatang')
#names라는 instance에 이 값들을 넣은 거임
puts(names) #두 개의 값을 가진 배열이 됐음
#push라는 array 클래스에 속해 있던 함수를 부르면 배열의 값을 추가할 수 있다는 뜻
#array는 다양한 함수를 가지고 있겠지
puts(names.join('--'))
#join은 names에 속한 값들을 join 안에 든 걸로 엮어줌

#다른 사람이 만든 객체를 우리가 사용하는 거지만
#우리가 객체를 만들 필요는 없다...
