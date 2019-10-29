m <- matrix(nrow=2, ncol=2)
rownames(m) <- c("smoke", "non-smoke")
colnames(m) <- c("drink", "non-drink")
m[1, 1:2] <- c(25, 17)
m[2, 1:2] <- c(15, 23)

print("행렬 m")
m
cat("\n")

m2 <- m
m2 <- rbind(m2, c(sum(m2[1:2, 1]), sum(m2[1:2, 2])))
rownames(m2) <- c("smoke", "non-smoke", "sum")
m2 <- cbind(m2, c(sum(m2[1, 1:2]), sum(m2[2, 1:2]), sum(m2[3, 1:2]) ) )
colnames(m2) <- c("drink", "non-drink", "sum")

print("행렬 m2")
m2