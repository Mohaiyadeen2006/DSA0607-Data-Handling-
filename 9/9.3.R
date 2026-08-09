# Load packages
library(ggplot2)
library(tidyr)

# Convert data to long format
survey_long <- pivot_longer(
  survey,
  cols = starts_with("Question"),
  names_to = "Question",
  values_to = "Response"
)

# Create stacked bar chart
ggplot(survey_long, aes(x = Question, fill = Response)) +
  geom_bar() +
  labs(
    title = "Overall Distribution of Survey Responses",
    x = "Questions",
    y = "Number of Responses",
    fill = "Response"
  ) +
  theme_minimal()