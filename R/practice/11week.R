library(MASS)
plot(Cars93$Weight, Cars93$Horsepower)

x1 <- c(min(Cars93$Weight), max(Cars93$Weight))
y1 <- c(min(Cars93$Horsepower), max(Cars93$Horsepower))
plot(Cars93$Weight, Cars93$Horsepower, main="Horsepower ~ Weight from Cars93", xlab="Weight", ylab="Horsepower", xlim=x1, ylim=y1, type="p")

par(bg="skyblue")
plot(Cars93$Weight, Cars93$Horsepower, main="Horsepower ~ Weight from Cars93", xlab="Weight", ylab="Horsepower", col="red", pch="*", cex=2)

y1 <- c(min(c(Cars93$Price, Cars93$Horsepower)), max(c(Cars93$Price, Cars93$Horsepower)))
plot(Cars93$Weight,
     Cars93$Horsepower, 
     main="Horsepower ~ Weight from Cars93",
     xlab="Weight", 
     ylab="Horsepower & Price", 
     ylim=y1,
     pch="*", col="red", cex=2)
points(Cars93$Weight, Cars93$Price, pch="+")

a <- 1:10
x <- 1:100
par(bg="aliceblue")
plot(c(0,0),
     main="Lines of 'y=ax'",
     xlim=c(min(x), max(x)),
     ylim=c(min(x), max(x)),
     type="n")

col_rainbow <- rainbow(length(a))
for (i in 1:length(a)) {
  y <- x * a[i]
  lines(x, y, col=col_rainbow[i])
}

legend(x=80, y=55, legend=paste("a=", a), col=col_rainbow, pch="-", bg="white", cex=1.2)

install.packages('rgl')
library(rgl)
a <- 1:10
x <- 1:100
y <- a*x

plot3d(a, x, y)




