class C: #괄호 열고 (object) 해줄 수 O
    def __init__(self, v):
        self.__value = v #앞에 짝대기 두 개를 붙여주면, instance 밖에서는 접근할 수 없는 변수가 됨.
    def show(self):
        print(self.__value)



# c1 = C(10)
# print(c1.value)
# c1.value = 20 #instance value에 접근해서 쓰기
# print(c1.value)
# c1.show()
#직접 접근하는 건 권장되지 않음

c1 = C(10)
# print(c1.__value)
c1.show() #이렇게 하면 접근 가능.
