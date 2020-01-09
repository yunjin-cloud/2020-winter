puts("아이디를 입력해 주세요. \n")
input = gets.chomp()
real_yunjin = "28"
real_urim = "chu"

if real_yunjin == input
  puts("Hello, Yunjin!")
elsif real_urim == input
  puts("Hello, Urim!")
else
  puts("Who are you?")
end
