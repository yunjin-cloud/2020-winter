class C
  def initialize(v)
    @value = v
  end
  def show()
    p @value
  end
  def getValue()
    return @value
  end
  def setValue(v)
    @value = v
  end 
end

c1 = C.new(10)
# p c1.value #루비는 얘를 함수로 해석하려고 해
# c1.value = 20 # 허용되지 않음
#루비에선 instance 변수에 class 밖에서(method 밖에서) 접근하는 게 허용되지 않음
#이게 금지돼 있으니, getValue이라는 함수를 만들어서 우회해서 접근해보자.
p c1.getValue()

#그리고 setValue를 만들어서 value 값을 세팅해보자!
p c1.setValue(20)
