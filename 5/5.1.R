# Website Traffic Data

Date <- as.Date(c("2023-01-01","2023-01-02","2023-01-03",
                  "2023-01-04","2023-01-05"))

PageViews <- c(1500,1600,1400,1650,1800)

# Line Chart
plot(Date, PageViews,
     type="o",
     col="blue",
     pch=16,
     lwd=2,
     xlab="Date",
     ylab="Page Views",
     main="Daily Website Page Views")

grid()