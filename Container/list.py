print(type('egoing'))

print(type(['jihee', 'yunjin', 'americano']))
#하나하나는 문자열이지만 묶어서 리스트
#대괄호는 리스트로 묶어주는 역할, 컴퓨터에게 알려줌

names = 'jihee', 'yunjin', 'ame'
print(names)
print(names[0]) #jihee

yunjin = ['Programmer', 'Seoul', 24, False] #리스트에는 문자열 뿐 아니라 다른 형태들도 입력 가능
yunjin[1] = 'Busan'
print(yunjin)

al = ['A', 'B', 'C', 'D']
print(len(al)) #이거 하나는 잊지 말자! 리스트의 길이는 len으로 안다.
al.append('E') #이것도 알아두자! 배열 끝에 하나 추가하기.
print(al)

del(al[2]) #삭제하고 싶은 원소, 이 정도는 알아두자!
print(al)
