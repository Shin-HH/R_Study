# Loops

# 1. for문
# 반복횟수가 정해져 있음
n <- c(1:10)
for (i in n) {
  print(i ^ 2)
}

# for문 안에서 if문 사용
n <- c(1:10)
for (i in n) {
  if (i %% 2 == 0) {
    cat(i, 'is an even number \n')
  } else {
    cat(i, 'is an odd number \n')
  }
}

# 반복 for문
mat <- matrix(data = seq(11, 20, by = 1), nrow = 5, ncol = 2)
mat

for (r in 1:nrow(mat)) {
  for (c in 1:ncol(mat)) {
    cat('The square of row', r, 'and column', c, 'is', mat[r, c] ^ 2, '\n')
  }
}

# 2. while문
# 반복횟수가 정해져 있지 않음
# 조건이 만족하면(TRUE) 실행, 만족하지 않으면(FALSE) 멈춤
# 최소 1회 실행 보장이 없음

# 3. repeat-break문
# 반복횟수가 정해져 있지 않음
# 조건이 만족하면(TRUE) 실행, 만족하지 않으면(FALSE) 멈춤
# 최소 1회 실행을 보장함