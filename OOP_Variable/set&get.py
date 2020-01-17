class C: #괄호 열고 (object) 해줄 수 O
    def __init__(self, v):
        self.value = v
    def show(self):
        print(self.value)
    def getValue(self):
        return self.value
    def setValue(self, v):
        self.value = v


# c1 = C(10)
# print(c1.value)
# c1.value = 20 #instance value에 접근해서 쓰기
# print(c1.value)
# c1.show()
#직접 접근하는 건 권장되지 않음

c1 = C(10)
print(c1.getValue())
c1.setValue(20)
print(c1.getValue())
