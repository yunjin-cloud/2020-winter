input_id = input("아이디를 입력해주세요.\n")

def login(user_id):
    members = ['yunjin', 'chaewon', 'Malatang']

    for member in members:
        if member == user_id:
            return True
    return False

if login(input_id):
    print("Hello, " + input_id)
else:
    print("Who are you?")
