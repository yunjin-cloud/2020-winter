puts("아이디를 입력해주세요.\n")
input_id = gets.chomp()
puts("비밀번호를 입력해주세요. \n")
input_pw = gets.chomp()

real_id = "pig"
real_pw = "bird"

if real_id == input_id and real_pw == input_pw
  puts("Hello!")
  else
  puts("로그인 실패!.\n")
end
