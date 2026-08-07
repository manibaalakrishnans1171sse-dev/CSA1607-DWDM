names <- c("Siri","Mahi","Chiru","Ravi","Asha","Kumar")
age   <- c(23,24,24,25,29,35)
marks <- c(88,78,25,91,67,73)
df <- data.frame(names, age, marks)

summary(df$age)
write.csv(df, "datafr.csv")