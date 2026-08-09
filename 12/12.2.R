# Dataset
inventory <- matrix(c(250,175,300), nrow=1)

# Product names
colnames(inventory) <- c("Product A","Product B","Product C")
rownames(inventory) <- c("Inventory")

# Stacked Bar Chart
barplot(inventory,
        col = c("orange"),
        main = "Stacked Bar Chart of Product Inventory",
        xlab = "Products",
        ylab = "Quantity Available",
        legend.text = rownames(inventory))