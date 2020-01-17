class C
  attr_reader :value #instance 외부에서(method 밖에서) 직접 value에 접근할 수 있게 해줌
  attr_writer :value # 쓰는 것도 가능하게 해주는 애
  attr_accessor :value #위의 두 행을 합친 것과 같은 뜻. 위 두 개를 주석 처리해도 됨.
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
#이게 금지돼 있으니, getValue이라는 함수를 만들어서 우회해서 접근해보자.
p c1.value #가능해짐! attr_reader 덕에.
c1.value = 20 #이건 wirter 안 쓰면 실행이 안 됨. 아직까진 읽기만 되는 거.
p c1.value
#어떤 값은, 쓰기를 불가능하게 하고 싶을 수도 있잖아.
