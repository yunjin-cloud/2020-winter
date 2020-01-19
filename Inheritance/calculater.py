class Cal(object):
    def __init__(self, v1, v2): #언더바 두 개를 양 옆에, self를 안 넣고 그냥 v1 v2 하면 위치가 두 개 바뀌어서 들어감...!
#파이썬의 첫 번째 매개변수(self)는 꼭 정의해줘야 하고, 그 첫 번째 매개변수는 그 instance가 됨.
        if isinstance(v1, int): #검증된 값이 들어오게 하기 위해
            self.v1 = v1 #instance 변수로 만들기 위해
        if isinstance(v2, int):
            self.v2 = v2
    def add(self):
        return self.v1 + self.v2
    def subtract(self):
        return self.v1 - self.v2
    def setV1(self, v):
        if isinstance(v, int): #첫 번째 입력된 값이 두 번째 정의된 인자와 형식이 같다면 True 리턴
            self.v1 = v
    def getV1(self):
        return self.v1

class CalMultiply(Cal):
    def multiply(self):
        return self.v1*self.v2

c1 = CalMultiply(10, 10)
print(c1.add())
print(c1.multiply())

#한 번 더 상속을 하고 싶을 때
class CalDivide(CalMultiply):
    def divide(self):
        return self.v1/self.v2

c2 = CalDivide(20, 10)
print(c2, c2.add())
print(c2, c2.multiply())
print(c2, c2.divide())
#cal에 정의된 v1, v2 변수까지 올라가서 상속해온 것
