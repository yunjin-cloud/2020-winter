input_id = input("아이디를 입력해주세요.\n")
input_pw = input("비밀번호를 입력해주세요. \n")

real_id = "pig"
real_pw = "bird"

if real_id == input_id and real_pw == input_pw:
    print("Hello!")
else:
    print("로그인 실패!\n")
