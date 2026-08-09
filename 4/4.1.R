# Product data
product <- c("Product A", "Product B", "Product C", "Product D", "Product E")
quantity <- c(250, 175, 300, 200, 220)

# Bar chart
barplot(quantity,
        names.arg = product,
        col = "skyblue",
        main = "Product Inventory Quantity",
        xlab = "Product Name",
        ylab = "Quantity Available")