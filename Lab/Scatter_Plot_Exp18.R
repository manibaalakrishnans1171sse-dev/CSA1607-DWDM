set.seed(9)
x <- rnorm(1000)
y <- rnorm(1000)

smoothScatter(y - x, main = "Smooth Scatter of (y - x)")
smoothScatter(x, y, main = "Smooth Scatter Plot of X vs Y", xlab = "X", ylab = "Y")