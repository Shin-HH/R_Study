# Matrix(행렬)

# 1. 행렬 만들기
x <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3)
x

y <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), ncol = 3)
y

# 1.1 R에서는 열부터 값이 채워짐
# byrow: 행부터 채우고 싶을때 사용
x <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, byrow = T)
x

# 1.2 행과 열에 이름 부여
# dimnames()
x <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3,
            dimnames = list(
              c('sample1', 'sample2', 'sample3'),
              c('feature1', 'feature2', 'feature3')
            ))
x



# 2. indexing
# matrix[row_index, col_index]로 indexing
x <- matrix(1:9, ncol = 3)
x
x[1, 1]
x[1, 2]

# 2.1 아무것도 기재하지 않으면 행 또는 열을 가져옴
x[1,]
x[2,]
x[,3]

# 2.2 -를 사용하면 특정 행 또는 열을 제외하고 가져옴
x[-1,]
x[,-1]
x[-1, -1]



# 3. Slicing
# matrix[:, :]로 slicing
x <- matrix(1:9, nrow = 3)
x[1:2, 2:3]
x[1, 2:3]
x[1:2,]
x[-3,]

# 3.1 index vector를 통해 slicing가능
x[c(1, 2), c(2, 3)]

# 3.2 행과 열에 이름이 있다면 이름을 사용가능
x <- matrix(1:9, nrow = 3, byrow = T,
            dimnames = list(
              c('Sample1', 'Sample2', 'Sample3'),
              c('Feature1', 'Feature2', 'Feature3')
            ))
x['Sample1',]
x[,'Feature2']
x[c('Sample1', 'Sample2'), c('Feature1', 'Feature2')]



# 4. operation
# 4.1 스칼라곱
x <- matrix(1:9, nrow = 3)
x * 2
x / 2

# 4.2 행렬끼리 덧셈/뺄셈
x <- matrix(1:9, nrow = 3)
y <- matrix(11:19, nrow = 3)
x + y
x - y

# 4.3 행렬곱
x %*% y

# 4.4 역행렬
x <- matrix(c(1, 2, 3, 4), nrow = 2)
solve(x)

# 4.5 전치행렬
t(x)

# 4.6 행렬의 차원
nrow(x) # 행의 수
ncol(x) # 열의 수

