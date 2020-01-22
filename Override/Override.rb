class C1
  def m()
    return 'parent'
  end
end

class C2 < C1 #상속 
  def m()
    return super() + ' child'
  end
end
#파이썬에서 super는 아예 저쪽 C1인 클래스를 가리켰는데
#루비에서 super는 동명의 함수가 들어 있는 method(함수)만을 지칭함!

o = C2.new()
p o.m()
