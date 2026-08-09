# Install package (only once)
# install.packages("ggplot2")

library(ggplot2)

# Create dataset
stocks <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03")),
  Stock_A = c(100, 105, 110)
)

# Calculate percentage change
pct_change <- c(NA, diff(stocks$Stock_A) / head(stocks$Stock_A, -1) * 100)

change_data <- data.frame(
  Date = stocks$Date[-1],
  Percent_Change = round(pct_change[-1], 2)
)

# Bar Chart
ggplot(change_data, aes(x = Date, y = Percent_Change)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(
    title = "Daily Percentage Change in Stock A",
    x = "Date",
    y = "Percentage Change (%)"
  ) +
  theme_minimal()