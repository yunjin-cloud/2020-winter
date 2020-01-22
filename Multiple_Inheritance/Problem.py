class C1():
    def c1_m(self):
        print("C1_m")
    def m(self):
        print("C1 m")

class C2():
    def c2_m(self):
        print("C2_m")
    def m(self):
        print("C2 m")

class C3(C1, C2): #C1과 C2를 상속하는 C3
    def m(self):
        print("C3 m")

c = C3() #C3의 instance 만들기
c.c1_m()
c.c2_m()
c.m() #이렇게 하면, C3에 m이 없으면 C1 m이 출력됨. 이름 같은 함수가 C1 C2에 있을 때
#C3(C2, C1) 이렇게 적었으면 C2가 상속되고.
#충분한 사유가 없으면 다중상속을 사용하지 않는 것을 권장.

print(C3.__mro__) #파이썬 내장 함수로, C3를 사용할 때의 우선순위를 보여줌
