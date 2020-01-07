puts('Hello ' + 'World')  #문자열의 결합
puts('Hello ' *3)  # Hello를 3번 반복하기 
puts('Hello'[0])  # 0번째 위치에 있는 H를 가져오기 
puts('Hello'[1])  # 1번째 위치에 있는 e를 가져오기 
puts('Hello'[2])  # 2번째 위치에 있는 l를 가져오기 

puts('hello world'.capitalize())  # 첫 글자만 대문자화 
puts('hello world'.upcase())  # 모든 글자 대문자화  
puts('hello world'.length())  #문자의 개수 세기
puts('Hello world'.sub('world', 'Programming'))  #world를 프로그래밍으로 바꾸기 

puts("yunjin's \"tutorial\"")  #큰 따옴표 앞에 \를 붙여줌으로써, 얘를 특수 문자가 아니라 문자로 해석하라고 알려줌
# 이 때, 이런 역슬래시를 escape라고 보냄. 특수문자의 임무로부터 탈출시킨다!

puts("\\")  #그냥 puts("\")라고 하면 마치 puts("hello)와 같은 것이기에, 하나 더 붙여준다!
# 역슬래시를 출력하고 싶을 땐 역슬래시를 두 개 써야 한다.
puts("Hello\nWorld")  #n의 약자는 new line
puts("Hello\tWorld")  #tab
puts("\a")  #벨소리

# 루비에서는 print('Hello\nWorld')로 하면, 그대~~로 출력된다. 줄바꿈 안 하고.


