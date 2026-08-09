# Install package if needed
# install.packages("ggplot2")

library(ggplot2)

# Import dataset
student <- read.csv(file.choose())

# Scatter plot
ggplot(student,
       aes(x = Study_Hours,
           y = Math_Score,
           color = Gender)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm",
              se = FALSE,
              color = "black") +
  labs(title = "Study Hours vs Math Score",
       x = "Study Hours",
       y = "Math Score") +
  theme_minimal()