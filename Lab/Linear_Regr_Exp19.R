set.seed(123)
diabetes <- data.frame(
  Age           = sample(21:81, 50, replace = TRUE),
  BloodPressure = sample(40:122, 50, replace = TRUE),
  Glucose       = sample(70:200, 50, replace = TRUE),
  Insulin       = sample(0:300, 50, replace = TRUE)
)

relation <- lm(BloodPressure ~ Age, data = diabetes)
summary(relation)

plot(diabetes$Age, diabetes$BloodPressure, col = "darkgreen",
     main = "Linear Regression Analysis",
     xlab = "Age", ylab = "BloodPressure")
abline(relation, col = "red", lwd = 2)