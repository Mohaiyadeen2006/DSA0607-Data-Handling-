# Dataset
product <- c("Product A", "Product B", "Product C")
quantity <- c(250, 175, 300)

# Bar Chart
barplot(quantity,
        names.arg = product,
        col = c("red", "green", "blue"),
        main = "Quantity Available for Each Product",
        xlab = "Products",
        ylab = "Quantity Available")