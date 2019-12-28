# Binomial Distribution
dbinom(x=11, size=20, prob=0.5)
choose(20, 11) * 0.5^11 * 0.5^9
## 문제 1: 동전을 20번 던져서 그 중 11번 앞면이 나올 확률은?
dbinom(x=11, size=20, prob=0.5)
## 문제 2: 동전을 20번 던져서 앞면이 최대 7번 나올 확률은?
pbinom(q=7, size=20, prob=0.5, lower.tail=TRUE)
## 문제 3: 동전을 20번 던졌을 때, 해당 분포를 따르는 난수를 10개 추출하자.
rbinom(n=10, size=1, prob=0.5)
dbinom(x=1, size=10, prob=0.5)
rs <- rbinom(n=1000, size=10, prob=0.5)
table(rs)
mean(rs == 1)


# Geometric Distribution
dgeom(x=3, prob=0.55)
## 문제 1: 어느 농구 선수의 3점 슛의 성공 확률이 0.55일 때, 4번째에 첫 성공할 확률은?
dgeom(x=3, prob=0.55)
## 문제 2: 위의 농구 선수가 최대 3번의 시도 안에 슛을 성공할 확률은?
pgeom(q=2, prob=0.55, lower.tail = TRUE)
## 문제 3: 위의 농구 선수가 슛 성공 활귤이 누적 99%가 되는 최대 시도 횟수는?
qgeom(p=0.99, prob=0.55)


# Poisson Distribution
dpois(x=3, lambda=2)
## 문제 1: 평균 4페이지당 오타 8개가 발견되었을 때, 한 페이지에서 오타 3개가 발견될 확률은?
dpois(x=3, lambda=2)
## 문제 2: 어떤 서비스에 가입자가 하루 평균 3명이라고 한다. 이 때, 하루에 2명 이하의 가입자가 있을 확률은?
ppois(q=2, lambda=3)
## 문제 3: 어떤 농구 선수가 한 경기에 평균 30점을 낸다고 한다. 어떤 날의 경기에서 45점 이상을 낼 확률은?
ppois(q=44, lambda=30, lower.tail=FALSE)
dpois(x=45, lambda=30) + ppois(q=45, lambda=30, lower.tail=FALSE)



