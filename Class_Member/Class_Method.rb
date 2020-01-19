class Cs
  def Cs.class_method() #class에 소속되는 method라는 걸 알려줘야 돼 안 그러면 instance랑 차이 없어서
    p "Class method"
  end
  def instance_method()
    p "Instance Method"
  end
end


i = Cs.new()

Cs.class_method() #Cs에 속한 class_method
i.instance_method() #i에 속한 instance_method

# Cs.instance_method()
#메소드가 클래스 소속이면 클래스 소속임을 Cs.class_method() 해서 알려줘야 함. 앞에 Cs를 붙여서
# i.class_method()
#위 두 코드는 에러가 뜸.
#클래스 메소드는 인스턴스에서 사용 못하고, 인스턴스 메소드는 클래스에서 사용 못함.
#클래스 메소드는 클래스 소속으로 사용
#인스턴스 메소드는 인스턴스 소속으로 사용
