# Product categories
category <- c("Category 1", "Category 1", 
              "Category 2", "Category 2", 
              "Category 3")

product <- c("Product A", "Product B",
             "Product C", "Product D",
             "Product E")

quantity <- c(250, 175, 300, 200, 220)

# Create table
inventory <- data.frame(category, product, quantity)

stacked_data <- xtabs(quantity ~ category + product, data = inventory)

# Stacked bar chart
barplot(stacked_data,
        beside = FALSE,
        col = rainbow(5),
        main = "Product Quantity by Category",
        xlab = "Category",
        ylab = "Quantity")

legend("topright",
       legend = product,
       fill = rainbow(5))