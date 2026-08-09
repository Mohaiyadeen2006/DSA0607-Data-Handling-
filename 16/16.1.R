# Install package if required
# install.packages("GGally")

library(GGally)

# Import dataset
patient <- read.csv(file.choose())

# View data
print(patient)

# Scatterplot Matrix
ggpairs(patient[, c("Age", "BMI", "BP", "Cholesterol")],
        title = "Scatterplot Matrix of Health Indicators")