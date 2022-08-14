# List(리스트)
# 해싱 또는 딕셔너리와 비슷한 개념(key, value)

# 1. list 정의(key=value)
x <- list(name = 'shin', age = 24)
x

# 1.1 각 값이 스칼라일 필요 없음
x <- list(name = 'shin', age = c(1, 2, 3))
x

# 1.2 중첩 list가 가능함
x <- list(a = list(aa = c(1, 2, 3)), b = list(bb = c(4, 5,  6)))
x
# 1. heterogenous: 벡터와 달리 값들이 같은 데이터 타입일 필요 없음
x <- list(1, 2, 'a')
x
x[1] # if use only one [], then return list of 1
x[[1]] # if use two [[]], then return element of 1
listA[c(1, 2)]
listA[[c(1, 2)]] # error

# list's elements can have names
names(listA)
names(listA) <- c('First', 'Second', 'Third')
listA

# list indexing can be held by name if list has it's name
listA[['First']]
listA$First

# handling
A <- list(name = 'Shin', age = 24, union =TRUE)
A
A$name
A$age
A$union

B <- list('Shin', 24, T)
B
B[[1]]

C <- vector(mode = 'list')
C[['name']] <- 'Shin'
C[['age']] <- 24
C[['union']] <- T
C
C$name
C$age
C$union

# difference between [] and [[]]
C1 <- C[1]
class(C1)

C2 <- C[[1]]
class(C2)

# Update
C
C$sex <- 'male'
C

# delete
C$age <- NULL
C

# list in list
tmplist <- list(a = list(1:5, c('a', 'b', 'c')), b = '2', c = NA)
tmplist
# unlist(): return in vector form
unlist(tmplist)
unlist(tmplist, use.names = F)

# lapply & sapply
# lapply: return in list
# sapply: return in vector
A <- list(1:3, 25:29)
A
lapply(A, median)
sapply(A, median)