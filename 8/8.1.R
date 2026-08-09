# Dataset

Student_ID <- c("L01","L02","L03","L04","L05","L06")
Course <- c("R","R","SQL","R","R","SQL")
Quiz_Score <- c(78,85,65,92,70,88)

# Histogram
hist(Quiz_Score,
     main="Distribution of Quiz Scores",
     xlab="Quiz Score",
     ylab="Frequency",
     col="skyblue",
     border="black")

# Boxplot by Course
boxplot(Quiz_Score~Course,
        main="Quiz Score by Course",
        xlab="Course",
        ylab="Quiz Score",
        col=c("orange","lightgreen"))