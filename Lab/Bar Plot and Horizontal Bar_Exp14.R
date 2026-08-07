a <- c(55, 67, 89, 80, 90)

barplot(a, names.arg = c("A","B","C","D","E"), col = "steelblue",
        main = "Bar Plot of Sample Scores", xlab = "Category", ylab = "Score")

barplot(a, names.arg = c("A","B","C","D","E"), col = "darkorange", horiz = TRUE,
        main = "Horizontal Bar Plot", xlab = "Score", ylab = "Category")