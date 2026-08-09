# Dataset

Study_Time <- c(3.5,4.2,2.0,5.0,2.5,4.0)
Quiz_Score <- c(78,85,65,92,70,88)
Videos_Watched <- c(12,15,8,18,9,14)

# Bubble Chart
symbols(Study_Time,
        Quiz_Score,
        circles=Videos_Watched/5,
        inches=0.3,
        bg="skyblue",
        fg="blue",
        xlab="Study Time (hrs)",
        ylab="Quiz Score",
        main="Study Time vs Quiz Score")

# Trend Line
abline(lm(Quiz_Score~Study_Time),
       col="red",
       lwd=2)