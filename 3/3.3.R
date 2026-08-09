# Data
years_service <- c(5, 3, 7, 4, 2)
performance <- c(85, 92, 78, 90, 76)

# Scatter plot
plot(years_service, performance,
     pch = 19,
     col = "red",
     main = "Relationship Between Years of Service and Performance",
     xlab = "Years of Service",
     ylab = "Performance Score")

# Add trend line
abline(lm(performance ~ years_service),
       col = "blue",
       lwd = 2)