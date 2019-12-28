library(MASS)
# 리스트의 생성
employee <- list(name="Kim", salary=50000, union=T, part="Server")
employee

fruitbox <- list(box1=c("Apple", "Banana"), box2=c("Melon", "Strawberry"), box3=c("Grape"))
fruitbox

# 리스트 key 추출
names(employee)

# 리스트 value 추출 -> 벡터
unlist(fruitbox)

# 리스트 추가
fruitbox$box4 <- c("Kiwi", "Orange")
fruitbox

# 리스트 제거
fruitbox$box3 <- NULL
fruitbox



# 데이터프레임의 생성 -> 행렬
d <- data.frame(name=c('A', 'B', 'C'), salary=c(30000, 42000, 38000), check=c(T, F, T))
d

# 데이터프레임의 접근
d$name
d$salary
d[1]
d[2, 3]
d[2,]

# 데이터프레임의 함수
dim(d) # 차원(행의 개수, 열의 개수) 반환
nrow(d) # 행의 개수 반환
ncol(d) # the number of columns 
head(d, 5) # 앞에서부터 n개의 행 반환 (기본값=5)
tail(d, 2) # 뒤에서부터 n개의 행 반환 (기본값=5)
names(d) # 열 이름 벡터 반환
rownames(d) # 행 이름 벡터 반환
class(d) # 해당 데이터의 자료형 타입을 반환
is.data.frame(d) # 자료형이 데이터프레임인지 확이하여 Boolean 반환
as.data.frame(d) # 데이터프레임 자료형으로 변환

# 데이터프레임의 데이터 요약
str(d)
summary(d)

# 데이터프레임의 병합
newrow <- data.frame(name="D", salary=50000, check=T)
newrow
d <- rbind(d, newrow)
d
newcol <- data.frame(part=c(1, 1, 2, 2))
newcol
d <- cbind(d, newcol)
d

# merge
d1 <- d
d1
d2 <- data.frame(name=c("A", "C", "D"), bonus=c("YES", "YES", "NO"))
d2
d3 <- data.frame(bonus=c("YES", "YES", "NO"))
d3
merge(d1, d2)
d1
merge(d1, d3)
d1

# 데이터의 처리
class <- data.frame(kor=c(92, 99, 72, 45), mat=c(55, 60, 22, 33), eng=c(100, 72, 55, 100), sci=c(44, 56, 88, 92))
class

apply(class, 2, sum) # margin=2 : 열 방향
apply(class, 1, mean) # margin=1 : 행 방향

str(Cars93[, 4:6])
lapply(Cars93[, 4:6], sum) # data의 각 열에 func를 적용하고, 해당 결과를 리스트로 반환
unlist(lapply(Cars93[, 4:6], sum))

s1 <- sapply(Cars93[, 4:6], sum)
class(s1)
s1
# sapply : lapply 함수와 비슷하게 사용하나, 반환되는 자료구조가 서로 다르다.
s2 <- sapply(Cars93[, 4:6], function(x) (x < 30))
class(s2)
head(s2)
# tapply : data 내부의 factor(범주)에 따라 그룹별로 func를 적용한다.
tapply(Cars93$Price, Cars93$Manufacturer, mean)

# split : 주어진 factor의 범주에 따라 데이터를 분리하여 리스트로 반환
head(split(Cars93$Price, Cars93$Manufacturer))
# subset : 주어진 condition(조건)에 따라 만족하는 데이터만 분리하여 값을 반환 (벡터)
subset(Cars93$Price, Cars93$Manufacturer=="Audi")  

# 데이터 정렬
Cars93$Price
sort(Cars93$Price, decreasing=T)
sort(Cars93$Price, decreasing=F)
# order : 정렬 결과 데이터가 현재 데이터 내에서 존재하는 위치를 반환
order(Cars93$Price, decreasing = T)  
  
  
  

