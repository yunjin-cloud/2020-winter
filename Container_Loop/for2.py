i = [0,1,2,3,4]

for item in i:
    print('Hello World')

#문법적 오류를 줄이기 위해
for item in [0,1,2,3,4]:
    print(item)

#값이 더 반복된다면?
for item in range(5):
    print(item)
#의미 : range(5) = [0,1,2,3,4]

for item in [5,6,7,8,9,10]:
    print(item)

for item in range(5, 11):
    print(item)
#0부터 수를 세니, 10까지 출력하려면 11까지 범위여야 함
