d1 <- data.frame(MEDICINE=c("M1", "M1", "M1", "M1", "M1"), SUBJECT=c("S1", "S2", "S3", "S4", "S5"), EFFECT=c(0.62, 0.77, 0.33, 0.27, 0.84), PROBLEM=c(0.11, 0.05, 0.16, 0.89, 0.77))
d1
d2 <- data.frame(MEDICINE=c("M2", "M2", "M2", "M2", "M2"), SUBJECT=c("S1", "S2", "S3", "S4", "S5"), EFFECT=c(0.15, 0.13, 0.29, 0.18, 0.62), PROBLEM=c(0.13, 0.77, 0.22, 0.10, 0.21))
d2
d3 <- data.frame(MEDICINE=c("M3", "M3", "M3", "M3", "M3"), SUBJECT=c("S1", "S2", "S3", "S4", "S5"), EFFECT=c(0.72, 0.13, 0.09, 0.57, 0.44), PROBLEM=c(0.33, 0.31, 0.42, 0.55, 0.66))
d <- rbind(d1, d2, d3)
d

effect <- tapply(d$EFFECT, d$MEDICINE, mean)
effect
problem <- tapply(d$PROBLEM, d$MEDICINE, mean)
problem
sort(problem, decreasing = T)