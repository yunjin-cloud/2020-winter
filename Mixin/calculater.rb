module CalMultiply #클래스는 믹스인을 못하니 모듈로 해줘야 함
  def multiply()
    return @v1 * @v2
  end
end

module CalDivide #클래스는 믹스인을 못하니 모듈로 해줘야 함
  def divide()
    return @v1 / @v2
  end
end

class Cal #객체 이름은 대문자여야 해
  include CalMultiply, CalDivide #Mixin
  def initialize(v1, v2) #루비가 자동으로 실행하는 초기화 함수. instance가 실행될 때 꼭 실행돼. 뒤에 오는 애는 받아오는 매개변수
    p v1, v2 #initialize는 생성자.
    @v1 = v1 #@가 있는 변수는 instance 변수. 인스턴스에 소속된 모든 method에서 사용 가능.
    @v2 = v2 #@가 있으면, 그 instance 내 모든 method에서 접근 가능!
  end
#@가 없는 변수는 method 안에서만 쓸 수 있는 지역변수
#@ 안 달고 내가 initialze에만 name을 초기화한다든지 하면, 이 initialize에서만 쓸 수 있게 되는 거.
  def add()
    return @v1 + @v2 #그냥 v1 v2로 하면 변수 인식 못 해
  end
  def subtract()
    return @v1 - @v2
  end
end

c = Cal.new(100, 10)
p c.add()
p c.multiply()
p c.divide()
