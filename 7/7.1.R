# Customer Data

CustomerID <- c(1,2,3)
Age <- c(28,35,42)

# Bar Chart
barplot(Age,
        names.arg=CustomerID,
        col="skyblue",
        main="Distribution of Customer Ages",
        xlab="Customer ID",
        ylab="Age")