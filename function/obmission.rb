def f1() #괄호를 쓰는 게 정석
  return 'f1'
end
puts(f1()) #정석

def f2 #여기 괄호를 생략할 수 있음
  return 'f2'
end
puts(f2()) #여긴 뭐 나와도 되고 아니어도 되고

def f3 #생략 가능
  return 'f3'
end
puts(f3) #여기도 생략 가능

def f4(a1) #정석
  return a1
end
puts(f4('f4')) #정석

def f5 a1 #여기에 입력값 괄호를 생략 가능
  return a1
end
puts(f5('f5'))
puts(f5 'f5') #안에 괄호 생략하고 이렇게도 가능
puts f5 'f5' #이것도 가능

def f6
  return 'f6'
end
puts f6

def f7
  'f7' #return을 안 썼음. ok
end
puts f7

def f8
  a = 1
  b = 2
  a + b #return을 생략함 
end
puts f8
