module Auth
  module_function()
  def login(id) #내가 받아온 값을 id라고 부를게
    members = ['yunjin', 'chaewon', 'malatang']
    for member in members do
      if member == id #그래서 얘도 id
        return True
      end
    end
    return False #for문을 다 돌았는데(종료됐는데) 겹치는 값이 없었어
  end
end
