module Yunjin  #꼭 대문자로, 함수 정의하듯이 module이라는 키워드를 붙여서
  module_function() #얘를 써줘야 함!!모듈의 함수로 접근하기 위해서 이걸 선언해줘야 함
  def a()
    return 'a'
  end
end

module Jinee
  module_function()
  def b()
    return 'B'
  end
end

puts(Yunjin.a())
puts(Jinee.b())

#파일이 복잡해지면, 하나의 파일에 모든 코드를 담는 건 좋은 생각이 아님.
#그래서 파일을 분리.
