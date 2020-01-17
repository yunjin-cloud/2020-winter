class C: #괄호 열고 (object) 해줄 수 O
    def __init__(self, v):
        self.value = v
    def show(self):
        print(self.value)


c1 = C(10)
print(c1.value)
c1.value = 20 #instance value에 접근해서 쓰기
print(c1.value)
c1.show()
