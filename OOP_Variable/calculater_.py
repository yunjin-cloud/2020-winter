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

c1 = Cal(10, 10)
print(c1.add())
print(c1.subtract())
c1.setV1('one') #얘가 입력된다면, one은 int형이 아니기 때문에 False가 리턴되지.
