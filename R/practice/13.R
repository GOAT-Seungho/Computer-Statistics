# 문제 1
## 어떤 고등학교의 어떤 학년의 학생이 320명이다.
## 해당 학생들의 시험 성적이 평균 43.2점, 표준편차 8점의 정규분포를 따를 때,
## 전체에서 55점 이상인 학생들의 비율이 얼마나 될지 확률의 근사값을 계산해보자.
# fiftyfive <- pnorm(q=55, mean=43.2, sd=8, lower.tail=FALSE) + dnorm(x=55, mean=43.2, sd=8)
# print(fiftyfive * 320)
scores <- rnorm(n=320, mean=43.2, sd=8)
scores
over <- scores[(scores > 55)]
over

length(over) / length(scores)

# 문제 2
## 무작위 생성 함수를 통하여 자유도가 10인 Student-t dist.를 따르는 수 100개를 생성한다.
## 생성된 데이터와 해당 분포의 확률 밀도 함수를 이용한 확률 값을 계산하여 
## 아래와 같이 분포를 확인할 수 있는 그래프를 출력하자.
rand <- rt(n=100, df=10)
plot(x=rand, y=dt(x=rand, df=10))