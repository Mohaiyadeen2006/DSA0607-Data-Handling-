
Sales <- c(15000, 18000, 22000, 20000, 23000)

plot(1:5, Sales,
     type = "o",
     col = "blue",
     xaxt = "n",
     xlab = "Month",
     ylab = "Sales (in $)",
     main = "Monthly Sales Data")

axis(1, at = 1:5,
     labels = c("January", "February", "March", "April", "May"))

