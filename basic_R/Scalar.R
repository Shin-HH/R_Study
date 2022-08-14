# 스칼라(Scalar)
# R의 기본 datatype은 벡터(vector)
# 스칼라는 길이가 1인 벡터로 볼 수 있다

# 1. 숫자형
# 1.1 정수
a <- 1

# 1.2 소수
b <- 1.1

c <- a + b
c

# 2. NA
# 데이터에 값이 존재하지 않으면 NA
# 데이터에 결측치가 존재하는 경우로 볼 수 있음
a <- 10
b <- 20
c <- 30
d <- NA

print(d)
is.na(d) # is.na(): NA이면 True, NA가 아니면 False를 반환

# 3. NULL
# 초기화되지 않은 값을 의미
# NA와는 다른 개념이다! TODO 차이점 정리
x <- NULL
is.null(x) # is.null(): NULL이면 True, NULL이 아니면 False를 반환
is.null(NA)

# 4. 문자열
# ''또는 ""로 묶어서 사용
a <- 'hello, R'
b <- "hello, R"

# 5. 진리값
# TRUE(T), FALSE(F)
# AND(&), OR(|), !(NOT) 연산자 사용가능
TRUE & TRUE
TRUE & FALSE
TRUE | TRUE
TRUE | FALSE
!TRUE
!FALSE

# &&연산자와 ||연산자
# boolean이 들어있는 벡터끼리 연산시 차이점
# &, |: 각 원소간 연산을 수행
c(T, F) & c(T, T)
c(T, F) | c(T, T)
# &&, ||: 한개의 boolean값끼리 연산을 수행
T && T
c(T, F) && c(T, T)

# 6. 요인(Factor)
# 범주형(Categorical) 변수를 위한 데이터 타입
sex <- factor('m', c('m', 'f'))
sex # sex 변수의 값은 'm'이고 가질수 있는 수준은 'm'과 'f'이다.

# nlevels(factor): 범주의 수를 반환
nlevels(sex)
# levels(factor): 범주의 목록을 반환
levels(sex)

# levels에 값을 할당해서 level을 변경할 수 있음
levels(sex) <- c('male', 'female')
sex

# factor는 명목형 변수(Nominal)를 만듬
# 순서형 변수(Ordinal)로 만들기 위한 방법
# factor(c(), ordered = T)
grade <- factor('A', c('A', 'B', 'C', 'F'), ordered = T)
grade