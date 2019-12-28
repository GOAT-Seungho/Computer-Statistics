# 과제 1
## MASS::Animals에는 동물 28종의 몸무게(kg)를 나타내는 body 변수와
## 뇌의 무게(g)을 나타내는 brain 변수가 있다.
## 상관계수를 통해 28종 동물들의 몸무게와 뇌 무게의 상관관계를 파악하여라.
library(MASS)
Animals$body
Animals$brain

cor(Animals$body, Animals$brain, use="complete.obs", method="spearman")
plot(Animals$body ~ Animals$brain)

# 과제 2
## MASS::Nile
## 100개의 데이터 중 임의의 10개를 표본으로 추출하여
## '임의의 10년 동안의 강수량'을 '100년 중 마지막 10년의 강수량'으로 가정한다.
## '마지막 10년의 강수량의 평균이 전체 100년 동안의 강수량 평균보다 크다.'
## 라는 가설에 대하여 모집단 모평균 가설 검정을 수행한다.
## (해당 가설을 대립가설로 설정)