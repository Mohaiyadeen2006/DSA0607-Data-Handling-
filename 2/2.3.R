# Dataset
age <- c(25, 30, 35, 28, 40)
score <- c(4, 5, 3, 4, 5)

# Age groups
age_group <- cut(age,
                 breaks = c(20, 30, 40, 50),
                 labels = c("20-29", "30-39", "40-49"),
                 right = FALSE)

# Create table
data <- table(age_group, score)

# Stacked bar chart
barplot(data,
        beside = FALSE,
        col = c("lightblue", "orange", "green"),
        main = "Customer Satisfaction Scores by Age Group",
        xlab = "Age Group",
        ylab = "Number of Customers")

legend("topright",
       legend = rownames(data),
       fill = c("lightblue", "orange", "green"))