# 첨부된 파일을 name : LOL / Heading : Yes Import
summary(LOL$gameDuration)

X <- sort(LOL$gameDuration)
Y <- dnorm(X, mean=1832, sd=100)

plot(Y, main="League Of Legend - GameDuration",
     xlab="the number of games", ylab="Probability")
