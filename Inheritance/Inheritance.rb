class Class1
  def method1()
    return 'm1'
  end
end
c1 = Class1.new() #인스턴스화
p c1.method1()
p c1, c1.method1() #마찬가지로 어디서 출력하는지 알려줌

class Class3 < Class1 #상속한다는 기호
  def method2()
    return 'm2'
  end
end
c3 = Class3.new()
p c3, c3.method1() #상속한 애
p c3, c3.method2() #직접 정의한 애
