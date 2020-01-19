class Class1(object):
    def method1(self):
        return 'm1'

c1 = Class1() #이게 실행되면 class1의 instance가 c1이 됨
print(c1, c1.method1()) #인자를 두 개 받아가서, 출력된 내용이 c1에 대한 결과임을 알려줌

#만약 내가 여기 기능을 추가하고 싶은데 상속을 모른다면
#이걸 그대로 복사한 후, 함수를 추가해주어야 함

class Class2(object): #상속을 모를 때 코드
    def method1(self):
        return 'm1'
    def method2(self):
        return 'm2'

c2 = Class2() #이게 실행되면, class2의 instance는 c2가 됨
print(c2.method1())
print(c2.method2())

#중복을 제거할 방법이 상속.
class Class3(Class1): #Class3가 Class1을 상속한다는 뜻
    def method2(self):
        return 'm2'

c3 = Class3()
print(c3, c3.method1()) #class3에는 없지만 class1에는 있는 method1
#c3를 내가 호출했잖아? 그래서 호출한 애로 가서 method1이 있는지를 봐.
#없잖아? 그럼 클래스의 부모한테 가서 method1이 있는지 보러 가. 그래서 걔를 실행한 결과 리턴.
