library(MASS)

x <- Cars93$Price

cat("원소의 개수 :", length(x), "\n")
cat("총합 :", sum(x), "\n")
cat("평균 :", mean(x), "\n")

y <- x[x > 15.0]
cat("15.0을 초과하는 원소의 개수 :", length(y), "\n")