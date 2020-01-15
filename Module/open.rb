require_relative 'Yunjin'
require_relative 'Jinee'

puts(Yunjin.a())
puts(Jinee.b())

#모듈을 통해 중복을 제거할 수 있고, 재활용성을 높일 수 있다.
#모듈의 함수를 손보면, 그 모듈을 불러오는 모든 코드의 값이 변하기 때문.
