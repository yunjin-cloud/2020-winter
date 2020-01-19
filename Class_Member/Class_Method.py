class Cs:
    @staticmethod #이거 안 붙이면 instance랑 똑같잖아
    def static_method():
        print("Static method")
    @classmethod
    def class_method(cls): #instance가 self를 갖듯이
        print("Class method")
    def instance_method(self):
        print("Instance method")


i = Cs()
Cs.static_method() #class method 중 1
#클래스 소속이니까 앞엔 Cs
Cs.class_method() #class method 중 1
#파이썬에서는 class method에 해당하는 게 두 개 있음
#역시 클래스 소속이니까 앞엔 Cs
i.instance_method()
#여긴 인스턴스 소속이니까 앞엔 인스턴스인 i
