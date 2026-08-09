# Install package (only once)
# install.packages("ggplot2")

library(ggplot2)

# Create dataset
stocks <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03")),
  Stock_A = c(100, 105, 110),
  Stock_B = c(150, 152, 148),
  Stock_C = c(120, 118, 122)
)

# Convert data into long format
long_data <- data.frame(
  Date = rep(stocks$Date, 3),
  Stock = rep(c("Stock A", "Stock B", "Stock C"), each = nrow(stocks)),
  Price = c(stocks$Stock_A, stocks$Stock_B, stocks$Stock_C)
)

# Line Chart
ggplot(long_data, aes(x = Date, y = Price, color = Stock, group = Stock)) +
  geom_line(size = 1.2) +
  geom_point(size = 3) +
  labs(
    title = "Stock Prices Over Time",
    x = "Date",
    y = "Stock Price"
  ) +
  theme_minimal()