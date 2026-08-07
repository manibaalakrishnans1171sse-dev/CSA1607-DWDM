names <- c("Siri","Mahi","Chiru","Ravi","Asha","Kumar")
age   <- c(23,24,24,25,29,35)
marks <- c(88,78,25,91,67,73)
df <- data.frame(names, age, marks)

# MEAN
mean(df$age)

# MEDIAN
median(df$age)

# MODE — the WRONG way (shown so you can explain the trap if asked)
mode(df$age)              # returns "numeric" — the storage type, NOT the statistical mode

# MODE — the CORRECT way
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(df$age)

write.csv(df, "datafr.csv")