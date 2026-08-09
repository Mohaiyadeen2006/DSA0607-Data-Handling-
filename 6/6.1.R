# Product Sales Data

sales <- matrix(c(2000,1500,1200,
                  2200,1800,1400,
                  2400,1600,1100),
                nrow=3,
                byrow=FALSE)

colnames(sales) <- c("January","February","March")
rownames(sales) <- c("Product A","Product B","Product C")

# Grouped Bar Chart
barplot(sales,
        beside=TRUE,
        col=c("red","blue","green"),
        main="Monthly Product Sales",
        xlab="Months",
        ylab="Sales")

legend("topright",
       legend=rownames(sales),
       fill=c("red","blue","green"))