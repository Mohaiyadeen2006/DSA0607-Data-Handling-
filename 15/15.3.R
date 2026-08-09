# Install packages if needed
# install.packages("ggplot2")
# install.packages("dplyr")

library(ggplot2)
library(dplyr)

# Import dataset
student <- read.csv(file.choose())

# Convert Exam_Date to Date
student$Exam_Date <- as.Date(student$Exam_Date)

# Extract Month
student$Month <- format(student$Exam_Date, "%Y-%m")

# Monthly Average Math Score
monthly_avg <- student %>%
  group_by(Month) %>%
  summarise(Avg_Math = mean(Math_Score))

# Calculate 2-point Moving Average
monthly_avg$Moving_Avg <- c(NA,
                            (monthly_avg$Avg_Math[-1] +
                             monthly_avg$Avg_Math[-length(monthly_avg$Avg_Math)]) / 2)

# Display data
print(monthly_avg)

# Plot
ggplot(monthly_avg, aes(x = Month, y = Avg_Math, group = 1)) +
  geom_line(color = "blue", linewidth = 1.2) +
  geom_point(size = 3) +
  geom_line(aes(y = Moving_Avg),
            color = "red",
            linetype = "dashed",
            linewidth = 1) +
  labs(
    title = "Monthly Average Math Scores with Moving Average",
    x = "Month",
    y = "Average Math Score"
  ) +
  theme_minimal()