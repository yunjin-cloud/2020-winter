input_id = input("아이디를 입력해주세요.\n")
# real_yunjin = "yunjin"
# real_urim = "urim"

members = ['yunjin', 'chaewon']
#
# for member in members:
#     if member ==inpput_id:
#         print('Hello! ' + member)
#     print('Who ard you?')

# if real_yunjin == in_str:
#   print("Hello, Yunjin!")
# elif real_urim == in_str:
#   print("Hello, Urim!")
# else:
#   print("Who are you?")

for member in members:
    if member == input_id:
        print('Hello!, ' + member)
        import sys
        sys.exit() #who are you가 안 나오게 하고 싶은 거야
print('Who are you?')
#위에 멤버만 추가해줄 수 있다면, 아래에는 어떤 수정도 가하지 않고
#내가 원하는 결과를 출력할 수 있는 거지.
