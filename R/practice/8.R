library(MASS)
Insurance
d <- data.frame(Holders=Insurance$Holders, District=Insurance$District, Group=Insurance$Group)
d

Check <- sapply(Insurance$Holders, function(x) (x < 500))
d3 <- cbind(d, Check)
d3

s <- merge(Insurance, d3)
s
head(s, 10)
sum <- tapply(s$Claims, s$Age, sum)
sum
