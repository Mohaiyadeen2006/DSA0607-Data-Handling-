# Customer Gender

Gender <- c("Female","Male","Female")

# Count Gender
gender_count <- table(Gender)

# Pie Chart
pie(gender_count,
    main="Customer Distribution by Gender",
    col=c("pink","lightblue"))