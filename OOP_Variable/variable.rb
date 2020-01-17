class C
  def initialize(v)
    @value = v
  end
  def show()
    p @value
  end
end

c1 = C.new(10)
# p c1.value #루비는 얘를 함수로 해석하려고 해
# c1.value = 20 # 허용되지 않음
#루비에선 instance 변수에 class 밖에서(method 밖에서) 접근하는 게 허용되지 않음
c1.show()
