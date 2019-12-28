# 함수와 조건문
comparison <- function(a, b) { # 함수의 생성
  if (a > b) {
    return (a) # 함수의 반환
  } else {
    return (b)
  }
}
comparison(3, 5)

comparison2 <- function(a, b) {
  if (a > b) {
    a
  } else {
    b
  }
}
comparison2(4, -6)

# 반복문
cumsum_while <- function(n) {
  sum <- 0
  now <- 1
  while (now < n+1) {
    sum <- sum + now
    now <- now + 1
  }
  return (sum)
}
cumsum_while(10)

cumsum_for <- function(n) {
  sum <- 0
  now <- 1
  for (i in now:n) {
    sum <- sum + i
  }
  return (sum)
}
cumsum_for(10)

cumsum_repeat <- function(n) {
  sum <- 0
  now <- 1
  repeat {
    if (now > n) {
      break
    }
    sum <- sum + now
    now <- now + 1
  }
  return (sum)
}
cumsum_repeat(10)

# 가변 길이 매개 변수
f <- function(...) {
  args <- list(...)
  for (a in args) {
    print(a)
  }
}
f(1, 4, 5, 10)

# 입력과 출력 (Input / Output)
add <- function() {
  num1 <- readline("First Num: ")
  num2 <- readline("Seconde Num: ")
  result <- as.numeric(num1) + as.numeric(num2)
  print(result)
}
add()
1
2

# 문자열 처리
str1 <- "North"
str2 <- "Pole"
str3 <- "South Pole"
nchar(str1) # 해당 문자열의 길이 반환
paste(str1, str2) # 여러 문자열을 이어 붙여 반환
paste(str1, str2, sep="") # 문자열 사이 들어갈 문자열 지정 default : 공백
paste(str1, str2, sep=".")
substr(str3, 7, 10) # start 부터 end까지 범위에 위치한 부분 문자열 반환
strsplit(str3, split=" ") # split 문자열 기준으로 나눈 결과인 부분 문자열 반환

# 데이터셋 만들기
randomscores <- function(studentnum) {
  score <- c()
  for (i in 1:studentnum) {
    score <- c(score, sample(0:100, 1)) # sample : data 내부에서 size 개수 만큼 무작위로 추출하여 반환
  }
  return (score)
}
passdata <- function(score, criteria) {
  passes <- c()
  for (s in score) {
    if (s >= criteria) {
      passes <- c(passes, "P")
    } else {
      passes <- c(passes, "F")
    }
  }
  return (passes)
}
# 3 Scores and results of 30 students
no <- seq(1:30)
kor <- randomscores(length(no))
eng <- randomscores(length(no))
mat <- randomscores(length(no))
matpass <- passdata(mat, 60)

classdata <- data.frame("NO"=no, "KOR"=kor, "ENG"=eng, "MAT"=mat, "MAT_PASS"=matpass)
