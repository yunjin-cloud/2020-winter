members = ['yunjin', 'chaewon', 'malatang']
# i = 0
# while i < len(members):
#     print(members[i])
#     i = i + 1
#while은 다른 코드에 영향을 받을 가능성이 커진다.
#일단 i만 해도, 반복문을 위해 만든 것.

for member in members : #뒤에 있는 배열에 담긴 애들을, 앞에 있는 새로운 변수에 담으라는 뜻
#새로 담아낼 멤버 / 반복할 컨테이너. 반복할 것들이 응축돼 있다.
    print(member) #새로운 변수에 담긴 값 출력
#while문에 비하면 문법적 설탕. 슈가라고 함
#버그가 발생할 가능성이 낮아지는 안전한 코드.
