# Array(배열)
# 배열은 n차원의 행렬로 볼 수 있음

# 1. 배열 만들기
array(1:12, dim = c(3, 4))
array(1:12, dim = c(2, 2, 3))

# 2. indexing, slicing
# 행렬과 비슷
x <- array(1:9, dim = c(3, 3))
x[1, 2]
x[1, 3]
x[1, ]
x[, 2]
x[-1, ]
x[-1, 2]

x[c(1, 2), 2]
x[1:2, 2:3]
