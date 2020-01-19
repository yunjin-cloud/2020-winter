require 'date' #이미 프로그램에 제공되는 모듈 뿐 아니라 객체를 불러오고자 할 때도 require 사용
d1 = Date.new(2000, 1, 1) #Date는 클래스 이름 2000년 1월 1일을 받아온 인스턴스가 d1.
d2 = Date.new(2010, 1, 1)

p d1.year()
p d2.year() #year라는 method가 하는 일은 같지만, 각각 소속된 곳에 따라 다른 값을 도출
#각각의 method는 각각의 instance에 소속되어 있다고 할 수 있는 것.

p Date.today()
#today는 클래스에 직접 붙음. class의 소속이지 instance 소속이 아님.
#d1, d2는 각각의 날짜 정보를 가지지만 today는 각자 자신의 날짜를 가지는 객체에 소속되면 이상하지.
#d1에 today가 있다면 2000년 1월 1일이 돼야지...
#즉 어떤 instance에도 소속되지 않는 게 자연스러운 게 today의 특징이지.
#instance는 안에 든 값, 데이터가 다른 게 차이.

#instance에 ㄸ라 다르게 동작해야 되는 건 instance 소속으로 만들고, instance 내부와 상관 없이
#동작하는 애는 클래스 멤버로 만들자.

#멤버에는 인스턴스 멤버와 클래스 멤버가 있고, 둘은 사용하는 상황이 다르다. 결론.
