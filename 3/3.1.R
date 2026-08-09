# Employee data
employee_id <- c(1, 2, 3, 4, 5)
performance <- c(85, 92, 78, 90, 76)

# Line chart
plot(employee_id, performance,
     type = "o",
     col = "blue",
     main = "Employee Performance Trend",
     xlab = "Employee ID",
     ylab = "Performance Score")

# Add legend
legend("topright",
       legend = "Performance Score",
       col = "blue",
       lty = 1,
       pch = 1)
