class Cs
  @@count = 0 #count 값 초기화해줘야 함
  def initialize()
    # @count #골뱅이 하나면 인스턴스에 속함
    # @@count #골뱅이가 두 개면 클래스에 속하는 변수
    @@count = @@count + 1 #이니셜라이즈로 초기화할 때마다 count를 1씩 증가시키겠다
  end
  def Cs.getCount() #클래스의 멤버로 지정해주지 않으면 인스턴스
    return @@count
  end
end
#클래스 변수는 모든 인스턴스가 그 값을 공유한다.

i1 = Cs.new()
i2 = Cs.new()
i3 = Cs.new()
i4 = Cs.new()
p Cs.getCount() #몇 개의 인스턴스가 만들어졌는지 세게 할 것
#Cs안에 어떤 isntance 몇 개 만들어졌는지 세는 변수가 있음을 의미
#왜냐면 클래스 변수로 접근해서 instance 수를 알아내잖아
