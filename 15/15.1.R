# Install package if needed
# install.packages("ggplot2")

library(ggplot2)

# Import dataset
student <- read.csv(file.choose())

# View data
print(student)

# Histogram of Math Score
ggplot(student, aes(x = Math_Score)) +
  geom_histogram(binwidth = 10,
                 fill = "skyblue",
                 color = "black") +
  labs(title = "Histogram of Math Scores",
       x = "Math Score",
       y = "Frequency") +
  theme_minimal()

# Boxplot of Science Score by Gender
ggplot(student, aes(x = Gender,
                    y = Science_Score,
                    fill = Gender)) +
  geom_boxplot() +
  labs(title = "Science Scores by Gender",
       x = "Gender",
       y = "Science Score") +
  theme_minimal()