class Cs:
    count = 0 #클래스의 안이자 method의 밖에 변수를 선언하면 클래스 변수가 됨!!
    def __init__(self):
        Cs.count = Cs.count + 1
    @classmethod #getCount를 클래스에 속하게 하기 위해
    def getCount(Cls): #위에 @classmethod를 하고자 할 때는 꼭 붙여줘야 함 Cls. Cls는 클래스 자체를 의미.
        print(Cls) #클래스를 가리키는 값을 첫 번째 인자로 주기로 약속되어 있다.
        return Cs.count #Cs를 Cls로 바꿔도 똑같은 동작을 한다

i1 = Cs()
i2 = Cs()
i3 = Cs()
i4 = Cs()

print(Cs.getCount())
