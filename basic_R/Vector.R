# Vector(벡터)
# 배열의 개념으로 c()안에 인자들을 나열

# 1. homogeneous: 모든 인자들은 동일한 데이터 타입의 스칼라
A <- c(10, 20, 30)
B <- c(1, 'a', 0.5)

# 2. 중첩 불가능
c(1, 2, 3)
c(1, 2, 3, c(1, 2, 3)) # 단일 차원의 벡터로 변경

# 3. 벡터를 만드는 방법
# 3.1 start:end
x <- 1:10
x

# 3.2 seq(from, to, by)
x <- seq(1, 10, 3)
x

# 3.2.1 seq_along(): 주어진 데이터의 길이만큼 1,2,3,...,n
x <- seq_along(c('a', 'b', 'c'))
x

# 3.2.2 seq_len(): 주어진 길이만큼 1,2,...,n
x <- seq_len(3)
x

# 4. vector의 각 원소에 이름
x <- c(1, 2, 3)
names(x) <- c('a', 'b', 'c')
x

# 5. vector indexing
# R에서는 인덱스가 1부터 시작함
x <- c('a', 'b', 'c')
x[1]
x[2]
x[3]

# 5.1 -index를 통해 특정 원소만 제외
x[-1]
x[-2]
x[-3]

# 6. vector slicing
x <- c('a', 'b', 'c', 'd', 'e')
x[c(1, 2, 3)]
x[c(1, 4, 5)]

x[1:4]
x[3:5]

# 6.1 vector에 names를 부여했다면 이름을 사용해 indexing 가능
x <- c(1, 2, 3)
names(x) <- c('first', 'second', 'third')
x['first']
x['second']
x['third']
x[c('first', 'second')]

# 7. 벡터의 길이
# 7.1 length()
x <- c(1, 2, 3, 4, 5)
length(x)

# 7.2 nrow(): matrix만 가능
nrow(x)

# 7.3 NROW(): vector를 Nx1 행렬로 취급/vector, matrix 모두 가능
NROW(x)

# 8. vector operation
# 8.1 %in%: vector내에 특정 값이 포함되었는지
x <- c(1, 2, 5)
1 %in% x
3 %in% x

# 8.2 set
# 8.2.1 setdiff(): 차집합
setdiff(c(1, 2, 5), c(1, 2))

# 8.2.2 union(): 합집합
union(c(1, 3, 5, 7), c(1, 3, 11, 13))

# 8.2.3 intersect(): 교집합
intersect(c(1, 2, 3), c(1, 3, 5))

# 8.2.4 setequal(): 집합간 비교
setequal(c(1, 2, 3), c(1, 2, 3))
setequal(c(1, 3, 5), c(1, 5, 8))

# 9. rep: 특정값이 반복된 벡터
rep(1:2, 5)
rep(1:2, each = 5)

# mode(type in python)
mode(A)
mode(B) # all values become character

# 2. vector has an index for each element
# indexing by []
# index starts 1(in contrast python starts 0)
A[1]
A[2]
# slicing by [:]
A[1:2]
A[1:3]
A[c(2, 3)]

# assign names
names(A)
names(A) <- c('First', 'Second', 'Third')
A

# indexing by name is available if vector has name
A['First']
A[c('First', 'Third')]

x <- c(1, 2, 3, 4)
x
x <- c(x[1:3], 10, x[4])
x

# length(): return vector's length(len in python) 
length(x)


# column first: column will be filled first if vector convert into other datatype
x <- matrix(1:6, nrow = 3, ncol = 2)
x

# caution) it's not like python numpy's broadcasting
x + c(1:2)

# vector operatations are elenment-wise
x <- c(1, 2, 3)
y <- c(10, 20, 30)
x + y
x * y # it's like Hadamard product(equals in numpy)
x / y
x %% y # equals % in python

y <- c(10, 20, 30, 40, 50)
y[c(1:3)]
y[2:3]
idx <- c(3, 4)
y[idx]
y[c(1, 2, 1, 3)]
y[-3] # caution) exclude index -3 and all
y[-length(y)]

# define vectors
x <- 1:5
x
y <- 5:1
y
z <- 10
1:z-1
1:(z-1)

# seq(): (range in python)
seq(from = 12, to = 30, by = 1)
seq(from = 12, to = 30, by = 3)
seq(from = 1.1, to = 2, length = 10)

# rep(): repeat
rep(10, 5)
rep(c(10, 20, 30), 3)
rep(1:3, 3)
rep(c(10, 20, 30), each = 3)

# comparison operator
x <- 1:10
x > 8
any(x > 8) # any(): True if there are at least one True
any(x > 20)
all(x > 8) # all(): True if all the elements are True
all(x > 0)

# NA(Not Available): some value exists but we cannot exactly know the value
# NULL: physically not exist
x <- c(1, 2, NA, 4, 5)
y <- c(1, 2, NULL, 4, 5)
x
y

mean(x)
mean(x, na.rm = TRUE)
mean(y)

# filtering
x <- c(10, 20, NA, 40, 50)
x[x>20] # return NA
subset(x, x>20) # do not return NA
which(x > 20) # return index