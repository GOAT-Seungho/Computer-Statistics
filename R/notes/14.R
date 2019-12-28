library(MASS)
variables <- c("Manufacturer", "RPM", "Price", "Weight")
summary(Cars93[variables])

library(psych)
describe(Cars93[variables])

attach(Cars93)
head(RPM)
head(Price)
detach(Cars93)

attach(Cars93)
mean(Price)
mean(Price, trim=0.1)
mean(Price, trime=0.05)
colMeans(Cars93[variables[2:4]])

median(Price)
median(RPM)
quantile(Price)
quantile(RPM)
quantile(Price, prob=c(0.1, 0.5, 0.9))
quantile(RPM, prob=c(0.1, 0.5, 0.9))

var(Price)
sd(Price)
range(Price)

table(Manufacturer)
sort(table(Manufacturer))
sort(table(Manufacturer), decreasing=T)
sort(table(Manufacturer), decreasing=T)[1]
names(sort(table(Manufacturer), decreasing=T)[1])

cov(Horsepower, Weight)
plot(Horsepower ~ Weight)
abline(lm(Horsepower ~ Weight), col="blue", lty=2)

cor(Horsepower, Weight, use="complete.obs", method="spearman")

cor.test(Weight, Horsepower)

x <- c(70.2, 54.9, 67.0, 60.5, 63.4, 61.9, 71.8, 66.1, 72.6, 73.0, 68.7, 70.3, 66.2, 55.6, 65.9)
t.test(x, alternative=c("greater"), mu=63.0, conf.level=0.95)
