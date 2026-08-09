# Load package
library(ggplot2)

# Count responses for Question 1
q1_counts <- as.data.frame(table(survey$Question_1))
colnames(q1_counts) <- c("Response", "Count")

# Create grouped bar chart
ggplot(q1_counts, aes(x = Response, y = Count, fill = Response)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Distribution of Responses for Question 1",
    x = "Question 1 Responses",
    y = "Number of Responses"
  ) +
  theme_minimal()