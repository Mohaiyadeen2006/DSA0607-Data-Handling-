# Load library
library(plotly)

# Create dataset
category <- c("Electronics", "Appliances", "Clothing")
sales <- c(50000, 40000, 35000)

# Create funnel chart
fig <- plot_ly(
  type = "funnel",
  y = category,
  x = sales
)

fig <- fig %>% layout(
  title = "Product Category Sales Funnel"
)

fig