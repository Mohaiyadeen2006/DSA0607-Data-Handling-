# Create dataset
geo_data <- data.frame(
  City = c("City A", "City B", "City C"),
  Population = c(500000, 700000, 600000),
  AvgTemperature = c(75, 68, 80)
)

# Scatter Plot
plot(
  geo_data$Population,
  geo_data$AvgTemperature,
  main = "Population vs Average Temperature",
  xlab = "Population",
  ylab = "Average Temperature",
  pch = 19,
  col = "blue",
  cex = 2
)

# Add labels
text(
  geo_data$Population,
  geo_data$AvgTemperature,
  labels = geo_data$City,
  pos = 3
)