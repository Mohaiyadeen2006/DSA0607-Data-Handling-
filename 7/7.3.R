# Customer Data

CustomerID <- c(1,2,3)
Age <- c(28,35,42)
Gender <- c("Female","Male","Female")
Income <- c(50000,60000,75000)

# Create Table
customer_table <- data.frame(
  CustomerID,
  Age,
  Gender,
  Income
)

# Display Table
print(customer_table)