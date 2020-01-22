class Cal #객체 이름은 대문자여야 해
  attr_reader :v1, :v2
  attr_writer :v1
  @@_history = [] #클래스가 정의될 때 호출되는 배열. initialize가 불릴 때마다 기록할 것
  def initialize(v1, v2) #루비가 자동으로 실행하는 초기화 함수. instance가 실행될 때 꼭 실행돼. 뒤에 오는 애는 받아오는 매개변수
    p v1, v2 #initialize는 생성자.
    @v1 = v1 #@가 있는 변수는 instance 변수. 인스턴스에 소속된 모든 method에서 사용 가능.
    @v2 = v2 #@가 있으면, 그 instance 내 모든 method에서 접근 가능!
  end
#@가 없는 변수는 method 안에서만 쓸 수 있는 지역변수
#@ 안 달고 내가 initialze에만 name을 초기화한다든지 하면, 이 initialize에서만 쓸 수 있게 되는 거.
  def add()
    result = @v1 + @v2
    @@_history.push("add : #{v1} + #{v2} = #{result}") #push는 배열에 어떠한 값을 추가하는 method
    return result #샵 중괄호 해주면, 그 안에 있는 걸 변수로 인식하겠다는 뜻
  end
  def subtract()
    result = @v1 - @v2
    @@_history.push("subtract : #{v1} - #{v2} = #{result}") #push는 배열에 어떠한 값을 추가하는 method
    return result
  end
  def setV1(v)
    if v.is_a?(Integer)
      @v1 = v
    end
  end
  def getV1()
    return @v1
  end
  def Cal.history()
    for item in @@_history #히스토리 배열 안에 든 걸 하나씩 꺼내오겠다
      p item
    end
  end
  def info()
    return "Cal => v1 : #{@v1}, v2 : #{@v2}"
  end
end

class CalMultiply < Cal
  def multiply()
    result = @v1 * @v2
    @@_history.push("multiply : #{v1} x #{v2} = #{result}") #push는 배열에 어떠한 값을 추가하는 method
    return result
  end
  def info()
    return "CalMultiply => #{super()}"
  end
end

class CalDivide < CalMultiply
  def divide()
    result = @v1 / @v2
    @@_history.push("divide : #{v1} / #{v2} = #{result}") #push는 배열에 어떠한 값을 추가하는 method
    return result
  end
  def info()
    return "CalDivide => #{super()}"
  end 
end

c0 = Cal.new(30, 60)
p c0.info()
c1 = CalMultiply.new(10, 10)
p c1.info()
c2 = CalDivide.new(20, 10)
p c2.info()
