# Load library
library(plotly)

# Create dataset
product_data <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

# Create pie chart
fig <- plot_ly(
  product_data,
  labels = ~Category,
  values = ~Sales,
  type = "pie",
  textinfo = "label+percent"
)

fig <- fig %>% layout(
  title = "Sales Distribution by Product Category"
)

fig