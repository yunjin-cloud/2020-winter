names = ['jihee', 'yunjin', 'ame']

puts(names.class) #데이터 타입 확인하기
puts(names[0])
names[0] = 'urim'
print(names) #배열을 한 줄에 출력하려면 루비에선 print
puts(names) #한 줄에 출력 안 됨

arr = [1,2,3,4,5,6]

puts(arr.first) #배열의 첫 번째 요소 가져오기
puts(arr.last) #배열의 마지막 요소 가져오기
puts(arr[1..4]) #배열의 1~4번째 요소 가져오기

puts(arr.length) #배열의 길이 출력

arr.push(7) # 배열에 원소 추가하기
puts(arr)
print(arr)

arr.delete_at(2) #2번째 요소인 3을 배열에서 지우고 싶다
print(arr)
