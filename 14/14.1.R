# Install package (only once)
# install.packages("ggplot2")

library(ggplot2)

# Import dataset
energy <- read.csv("Energy_Consumption_Data.csv")

# View dataset
print(energy)

# Histogram
ggplot(energy, aes(x = Units_Consumed)) +
  geom_histogram(binwidth = 100,
                 fill = "skyblue",
                 color = "black") +
  labs(
    title = "Histogram of Units Consumed",
    x = "Units Consumed (kWh)",
    y = "Frequency"
  ) +
  theme_minimal()

# Density Plot
ggplot(energy, aes(x = Units_Consumed)) +
  geom_density(fill = "lightgreen",
               alpha = 0.5) +
  labs(
    title = "Density Plot of Units Consumed",
    x = "Units Consumed (kWh)",
    y = "Density"
  ) +
  theme_minimal()