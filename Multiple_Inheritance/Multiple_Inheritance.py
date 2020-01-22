class C1():
    def c1_m(self):
        print("C1_m")

class C2():
    def c2_m(self):
        print("C2_m")

class C3(C1, C2): #C1과 C2를 상속하는 C3
    pass

c = C3() #C3의 instance 만들기
c.c1_m()
c.c2_m()
