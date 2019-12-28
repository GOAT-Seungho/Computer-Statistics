
library(MASS)
smoke <- survey$Smoke
smoke
temp <- table(smoke)
lab2 <- c("Heavy", "Never", "Occas", "Regul")
data2 <- c(temp[1], temp[2], temp[3], temp[4])
color <- c("red", "blue", "yellow", "green")
pct <- round(data2/sum(data2)*100)
lab2 <- paste(lab2, pct)
lab2 <- paste(lab2, "%", sep="")


pie(data2, init.angle=90, label=lab2, col=color)

nile <- Nile
hist(nile, breaks=7)
