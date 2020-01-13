puts("아이디를 입력해 주세요. \n")
input_id = gets.chomp()
# real_yunjin = "yunjin"
# real_urim = "urim"
members = ['yunjin', 'chaewon']

# if real_yunjin == input
#   puts("Hello, Yunjin!")
# elsif real_urim == input
#   puts("Hello, Urim!")
# else
#   puts("Who are you?")
# end

for member in members do
  if member == input_id
    puts('Hello!, ' + member)
    exit
  end
end
puts('Who are you?')
