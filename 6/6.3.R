# Product Sales Table

ProductID <- c(1,2,3)

ProductName <- c("Product A","Product B","Product C")

January <- c(2000,1500,1200)
February <- c(2200,1800,1400)
March <- c(2400,1600,1100)

sales_table <- data.frame(
  ProductID,
  ProductName,
  January,
  February,
  March
)

print(sales_table)
