# Install package if required
# install.packages("ggplot2")

library(ggplot2)

# Import dataset
patient <- read.csv(file.choose())

# Q-Q Plot
qqnorm(patient$Cholesterol,
       main = "Q-Q Plot of Cholesterol Levels")

qqline(patient$Cholesterol,
       col = "red",
       lwd = 2)

# ECDF Plot
ggplot(patient, aes(x = Cholesterol)) +
  stat_ecdf(geom = "step",
            color = "blue",
            linewidth = 1.2) +
  labs(
    title = "ECDF of Cholesterol Levels",
    x = "Cholesterol",
    y = "ECDF"
  ) +
  theme_minimal()