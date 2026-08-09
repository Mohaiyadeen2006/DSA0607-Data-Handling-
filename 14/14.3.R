# Install packages (only once)
# install.packages("ggplot2")
# install.packages("dplyr")

library(ggplot2)
library(dplyr)

# Import dataset
energy <- read.csv("Energy_Consumption_Data.csv")

# Calculate average renewable usage
avg_usage <- energy %>%
  group_by(Sector) %>%
  summarise(Average_Renewable = mean(Renewable_Usage))

# Display averages
print(avg_usage)

# Bar Chart
ggplot(avg_usage,
       aes(x = Sector,
           y = Average_Renewable,
           fill = Sector)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Average Renewable Energy Usage by Sector",
    x = "Sector",
    y = "Average Renewable Usage (%)"
  ) +
  theme_minimal()