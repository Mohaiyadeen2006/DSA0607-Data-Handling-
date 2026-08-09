# Sample Advertising Budget
Advertising <- c(5000, 6000, 7000, 6500, 8000)

# Monthly Sales
Sales <- c(15000, 18000, 22000, 20000, 23000)

plot(Advertising,
     Sales,
     pch = 19,
     col = "red",
     main = "Advertising Budget vs Monthly Sales",
     xlab = "Advertising Budget ($)",
     ylab = "Monthly Sales ($)")
