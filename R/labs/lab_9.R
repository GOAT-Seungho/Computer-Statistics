library(MASS)
y <- summary(cats$Sex)
barplot(y, names=c("Female", "Male"), main="The Number of Cats Depending on Sex")

plot(cats$Bwt, cats$Hwt, 
     main="Heart Weight (g) by Body Weight (kg) of Cats", 
     xlab="Body Weight (kg)", 
     ylab="Heart Weight (g)", 
     xlim=c(summary(cats$Bwt)[1], summary(cats$Bwt)[6]), 
     ylim=c(summary(cats$Hwt)[1], summary(cats$Hwt)[6]),
     col="red",
     pch="#")

