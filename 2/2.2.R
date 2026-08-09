# Dataset
scores <- c(4, 5, 3, 4, 5)

# Count frequencies
score_count <- table(scores)

# Pie chart
pie(score_count,
    main = "Distribution of Customer Satisfaction Scores",
    col = rainbow(length(score_count)))