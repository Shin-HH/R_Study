# condition(if syntax)
r <- 1
if (r == 4) {
  print('value of r is 4')
} else {
  print('value of r is not 4')
}

r <- 4
if (r == 4) {
  print('value of r is 4')
} else {
  print('value of r is not 4')
}

# 주의할 점: else의 위치는 {}를 닫은 라인에 있어야 함
r <- 4
if (r == 4) {
  print('value of r is 4')
}
else {
  print('value of r is not 4')
}

# statement 내에서 계산이 가능함
# cat(): 두개 이상의 인자를 연속적으로 print
r <- 5
if (r == 5) {
  cat('value of squared r is', r ^ 2)
} else {
  cat('value of squared root r is', sqrt(r))
}

# 함수의 결과물이 condition으로 될 수 있음
x <- c(10, 12, 15, 19, 20)
mean(x)
median(x)

if (mean(x) > median(x)) {
  print('mean > median')
} else {
  print('mean < median')
}

# simple form
x <- 1
if (x > 0) print('positive') else print('negative')

# if문을 사용해서 변수 초기화 가능
x <- 1
y <- if (x > 0) 'positive' else 'negative'
y

# else if문: 조건이 여러개 있을 때 사용
x <- 0
if (x > 0) {
  print('positive')
} else if (x < 0) {
  print('negative')
} else {
  print('zero')
}


# 예제: 부가가치세 계산
# A = 8%, B = 10%, c = 20%
category <- 'A'
price <- 10

if (category == 'A') {
  cat('8% VAT applied.', 'The total price is', price * 1.08)
} else if (category == 'B') {
  cat('10% VAT applied.', 'The total price is', price * 1.1)
} else if (category == 'C') {
  cat('20% VAT applied.', 'The total price is', price * 1.2)
} else {
  print('Not allowed category')
}

# ifelse: vectorized condition
# python np.where와 똑같네
x <- 1:10
y <- ifelse(x %% 2 == 0, 'Even', 'Odd')
y
