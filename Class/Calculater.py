class Cal(object):
    def __init__(self, v1, v2): #언더바 두 개를 양 옆에, self를 안 넣고 그냥 v1 v2 하면 위치가 두 개 바뀌어서 들어감...!
        print(v1, v2) #파이썬의 첫 번째 매개변수(self)는 꼭 정의해줘야 하고, 그 첫 번째 매개변수는 그 instance가 됨.
        self.v1 = v1 #instance 변수로 만들기 위해
        self.v2 = v2
    def add(self):
        return self.v1 + self.v2
    def subtract(self):
        return self.v1 - self.v2

c1 = Cal(10, 10)
print(c1.add())
print(c1.subtract())

c2 = Cal(30, 20)
print(c2.add())
print(c2.subtract())

#instance를 사용하는 코드
