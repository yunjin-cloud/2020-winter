class Cal #객체 이름은 대문자여야 해
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
  def setV1(v)
    if v.is_a?(Integer)
      @v1 = v
    end
  end
  def getV1()
    return @v1
  end
end

#같은 기능을 수행했음 할 때.
#동일한 행위를 하지만 각각에 따라 그 결과는 다름.
#c1 = Cal.new() #new라는 애가 cal이라는 클래스를 복제한 애를 리턴해줌. 그걸 변수에 담음.
c1 = Cal.new(10, 10) #10과 10을 더한 걸 리턴하고 싶은 것
#10은 v1에, 10은 v2에 들어가게 됨.
puts(c1.add()) #p c1.add() 해도 똑같음! puts 귀찮으니 p로 가자 이제
p c1.subtract()
c1.setV1(20) #20이 v1이 되고 10이 v2여서
c1.setV1('one') #이 값은 무시됨.
#그러나 파이썬은,
#누군가 c1.v1 = 'one' 이렇게 입력한다면 그걸 막아주진 못함
#사용자가 올바르게 사용할 것이라는 기대가 있음.
p c1.add()
p c1.getV1()
