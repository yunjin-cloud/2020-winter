class Cal(object):
    _history = []
    def __init__(self, v1, v2): #언더바 두 개를 양 옆에, self를 안 넣고 그냥 v1 v2 하면 위치가 두 개 바뀌어서 들어감...!
#파이썬의 첫 번째 매개변수(self)는 꼭 정의해줘야 하고, 그 첫 번째 매개변수는 그 instance가 됨.
        if isinstance(v1, int): #검증된 값이 들어오게 하기 위해
            self.v1 = v1 #instance 변수로 만들기 위해
        if isinstance(v2, int):
            self.v2 = v2
    def add(self):
        result = self.v1 + self.v2
        Cal._history.append("add : %d+%d=%d" % (self.v1, self.v2, result)) #요소 추가하려면 append
        return result
    def subtract(self):
        result = self.v1 - self.v2
        Cal._history.append("subtract : %d-%d=%d" % (self.v1, self.v2, result)) #요소 추가하려면 append
        return result
    def setV1(self, v):
        if isinstance(v, int): #첫 번째 입력된 값이 두 번째 정의된 인자와 형식이 같다면 True 리턴
            self.v1 = v
    def getV1(self):
        return self.v1
    @classmethod
    def history(cls):
        for item in Cal._history:
            print(item)
    def info(self):
        return "Cal => v1 : %d, v2 : %d" % (self.v1, self.v2)

class CalMultiply(Cal):
    def multiply(self):
        result = self.v1 * self.v2
        Cal._history.append("multiply : %dx%d=%d" % (self.v1, self.v2, result)) #요소 추가하려면 append
        return result
    def info(self):
        return "CalMultiply => %s" % super().info()

#한 번 더 상속을 하고 싶을 때
class CalDivide(CalMultiply):
    def divide(self):
        result = self.v1 / self.v2
        Cal._history.append("divide : %d/%d=%d" % (self.v1, self.v2, result)) #요소 추가하려면 append
        return result
    def info(self):
        return "CalDivide => %s" % super().info()
#여기서 super는 CalMultiply

c0 = Cal(30, 60)
c1 = CalMultiply(10, 10)
c2 = CalDivide(20, 10)

print(c0.info())
print(c1.info())
print(c2.info())
