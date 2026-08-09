# Website Traffic Data

Date <- c("2023-01-01","2023-01-02","2023-01-03",
          "2023-01-04","2023-01-05")

CTR <- c(2.3,2.7,2.0,2.4,2.6)

# Sort in descending order
index <- order(CTR, decreasing=TRUE)

Date <- Date[index]
CTR <- CTR[index]

# Bar Chart
barplot(CTR,
        names.arg=Date,
        col="orange",
        xlab="Date",
        ylab="Click-through Rate (%)",
        main="Top Days by Click-through Rate")
