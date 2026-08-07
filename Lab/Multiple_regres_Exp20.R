set.seed(123)
diabetes <- data.frame(
  Age           = sample(21:81, 50, replace = TRUE),
  BloodPressure = sample(40:122, 50, replace = TRUE),
  Glucose       = sample(70:200, 50, replace = TRUE),
  Insulin       = sample(0:300, 50, replace = TRUE)
)

input <- diabetes[, c("Age", "BloodPressure", "Glucose")]
model <- lm(Age ~ BloodPressure + Glucose, data = input)
print(model)

A    <- coef(model)[1]   # Intercept
xBP  <- coef(model)[2]   # BloodPressure coefficient
yGl  <- coef(model)[3]   # Glucose coefficient
print(A); print(xBP); print(yGl)

# Predict Age for a specific patient: BloodPressure = 80, Glucose = 120
newBP <- 80
newGlucose <- 120
predicted_age <- A + xBP * newBP + yGl * newGlucose
print(predicted_age)

# Cross-check with R's own prediction function — should match exactly
predict(model, newdata = data.frame(BloodPressure = newBP, Glucose = newGlucose))