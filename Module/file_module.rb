require('./yunjin') #파이썬의 import와 같음 !
# = require 'yunjin'
# ./가 의미하는 건 '현재 디렉토리'
#즉, file_module과 같은 위치에서 yunjin을 불러오라는 것!
#이걸 터미널에서 실행하면 되지만, 아톰에서 실행하면 여전히 안 됨!!

#이 문제를 해결하는 가장 쉬운 방법은 require가 아닌 require_relative라는 함수를 사용하는 것

require_relative 'yunjin'

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
