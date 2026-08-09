# Install package if required
# install.packages("ggplot2")

library(ggplot2)

# Import dataset
patient <- read.csv(file.choose())

# Calculate averages
health_avg <- data.frame(
  Indicator = c("Age", "BMI", "BP", "Cholesterol"),
  Average = c(
    mean(patient$Age),
    mean(patient$BMI),
    mean(patient$BP),
    mean(patient$Cholesterol)
  )
)

# Display averages
print(health_avg)

# Bar Chart
ggplot(health_avg,
       aes(x = Indicator,
           y = Average,
           fill = Indicator)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Average Health Indicators of Patients",
    x = "Health Indicator",
    y = "Average Value"
  ) +
  theme_minimal()