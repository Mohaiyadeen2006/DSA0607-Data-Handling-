# Install package (only once)
# install.packages("ggplot2")

library(ggplot2)

# Import dataset
energy <- read.csv("Energy_Consumption_Data.csv")

# Scatter Plot
ggplot(energy,
       aes(x = Temperature,
           y = Units_Consumed,
           size = Peak_Hours)) +
  geom_point(color = "blue",
             alpha = 0.6) +
  labs(
    title = "Temperature vs Units Consumed",
    x = "Temperature (°C)",
    y = "Units Consumed (kWh)",
    size = "Peak Hours"
  ) +
  theme_minimal()