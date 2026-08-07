names <- c("Siri","Chiru","Loki")
age   <- c(23, 24, 25)
marks <- c(88, 78, 25)
df <- data.frame(names, age, marks)

hist(df$age, col = "skyblue", main = "Histogram of Age", xlab = "Age")
boxplot(df$age, col = "salmon", main = "Boxplot of Age", ylab = "Age")