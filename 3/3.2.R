# Department data
department <- c("Sales", "HR", "Marketing", "Sales", "HR")

# Count employees in each department
dept_count <- table(department)

# Bar chart
barplot(dept_count,
        col = c("skyblue", "orange", "green"),
        main = "Employee Distribution by Department",
        xlab = "Department",
        ylab = "Number of Employees")