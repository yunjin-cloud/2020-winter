class C1:
    def m(self):
        return 'parent'

class C2(C1): #C1을 상속
    pass #C2에는 아무 내용도 없어,라는 뜻

o = C2()
print(o.m())

class C3(C1):
    def m(self):
        return 'child' #override
#자식이 같은 이름 method를 직접 재정의했기 때문

k = C3()
print(k.m())

#근데 함수 이름이 똑같다는 건 기능도 유사할 가능성이 크잖아
#그래서 부모 기능을 이어오고, 자식 기능을 덧붙이는 쪽

class C4(C1):
    def m(self):
        return super().m() + ' child' #super는 파이썬 내장 함수
#super는 부모 의미.
pc = C4()
print(pc.m())
