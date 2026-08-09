# Product data
product <- c("Product A", "Product B", "Product C", "Product D", "Product E")

price <- c(50, 70, 40, 60, 55)

quantity <- c(250, 175, 300, 200, 220)

# Scatter plot
plot(price, quantity,
     pch = 19,
     col = "red",
     main = "Relationship Between Product Price and Quantity",
     xlab = "Product Price",
     ylab = "Quantity Available")

# Trend line
abline(lm(quantity ~ price),
       col = "blue",
       lwd = 2)