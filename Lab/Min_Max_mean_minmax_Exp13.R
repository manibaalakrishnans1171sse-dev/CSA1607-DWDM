set.seed(123)
diabetes <- data.frame(
  Age           = sample(21:81, 50, replace = TRUE),
  BloodPressure = sample(40:122, 50, replace = TRUE),
  Glucose       = sample(70:200, 50, replace = TRUE),
  Insulin       = sample(0:300, 50, replace = TRUE)
)
A <- diabetes$Age

# MEAN
Mean <- mean(A)
Mean

# MINIMUM
Minimum <- min(diabetes$Age)
Minimum

# MAXIMUM
Maximum <- max(diabetes$Age)
Maximum

# MIN-MAX NORMALIZATION -> rescales values into [0, 1]
MinMax <- (A - Minimum) / (Maximum - Minimum)
MinMax