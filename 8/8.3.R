# Dataset

Login_Date <- as.Date(c("2025-01-05",
                        "2025-01-05",
                        "2025-02-08",
                        "2025-02-08",
                        "2025-03-12",
                        "2025-03-12"))

Quiz_Score <- c(78,85,65,92,70,88)

# Month
Month <- format(Login_Date,"%Y-%m")

# Monthly Average
avg_score <- tapply(Quiz_Score, Month, mean)

print(avg_score)

# Moving Average
moving_avg <- filter(avg_score,
                     rep(1/2,2),
                     sides=1)

# Line Chart
plot(avg_score,
     type="o",
     col="blue",
     xlab="Month",
     ylab="Average Quiz Score",
     main="Average Monthly Quiz Score")

lines(moving_avg,
      type="o",
      col="red")

legend("topleft",
       legend=c("Average","Moving Average"),
       col=c("blue","red"),
       lty=1)