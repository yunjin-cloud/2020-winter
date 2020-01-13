def a3():
    return 'aaa'

print(a3())

def aa():
    return 'aa'

def ab():
    return 'ab'

print(aa())
print(ab())

def aaa():
    print('before')
    return 'aaa'
    print('after') #출력되지 않음

print(aaa())
#여기서 알 수 있는 교훈
#return의 두 가지 기능
#1. return에 오는 애를 함수의 결괏값으로 만든다
#2. return을 만나면 함수의 실행을 종료한다.
#return을 통해 재사용이 용이해짐!
#이메일 보내는 함수, filesave 함수, print함수를 다 정의하는 것보다...
#return 하나 받아와서 원하는 데 쓰는 게 나으니까.
