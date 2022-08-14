# 현재의 작업디렉토리를 반환
getwd()

# 디렉토리 변경
setwd('/Users/sinhyeonho/신현호/R/basic_R')
getwd()

# 상위 디렉토리로 변경
setwd('..')
getwd()

# 하위 디렉토리로 변경
setwd('basic_R')
getwd()

# 스크립트 파일을 실행
# working directory내에 실행하고자 하는 파일이 존재해야함
source('script name')

# 변수 조회
ls()

x <- 10
ls()

y <- c(1, 2, 3, 4)
ls()

f <- function(y) (y - 32)/1.8
ls()

s <- 'hello, R'
ls()

# 더 자세히 보고 싶을때
ls.str()

# 변수 삭제
z <- 3.141592
z
rm(z)
z

# 여러 변수 삭제
rm(x, y)
ls()

# 모든 변수 삭제
rm(list = ls())
ls()

# 변수 저장
x <- 123
save(x, file = 'test.rda')

# 불러오기
load('test.rda')

# 실행했던 명령어 조회
history()