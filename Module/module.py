#파이썬에서는 import라고 하면 뒤에 불러올 파이썬 파일을 찾음!!
import a
import B
#import a, B라고 하는 걸 더 권장

print(a.a())
print(B.B())

#yunjin이라는 모듈에서 a 함수만 불러오고 싶을 땐?
from yunjin import a
print(a())
#이렇게 가져오면 yunjin을 명시할 필요X

#아예 모듈을 가져오면 명시해야 하지만...

from yunjin import B as print_B #B를 print_B라는 이름으로 가져오고 싶다.
print(print_B())

import a as print_a # 파일 이름인 모듈 a를 print_a라는 함수 이름으로 쓰고 싶다
print(print_a.a())

#from 없이 import만 있으면 모듈을 가져오는 것이고, from과 함께 있으면 함수만 가져오는 것!
#import가 가져오는 건 모듈일 수도, 함수일 수도 있다!
