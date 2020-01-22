require_relative 'lib' #이 루비 파일과 같은 폴더에 있는 다른 루비 파일을 가져옴
#Lib::A #Lib 모듈에 속한 클래스 A를 가져온다는 뜻
#Lib::A.new() #new를 붙임으로써 인스턴스화

obj = Lib::A.new()

p obj.a()
