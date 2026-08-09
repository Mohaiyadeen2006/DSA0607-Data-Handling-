# Website User Interaction Data

Date <- 1:5

Likes <- c(120,135,110,145,160)
Shares <- c(40,45,35,50,55)
Comments <- c(25,30,22,28,35)

# Cumulative values
Share_Total <- Likes + Shares
Comment_Total <- Likes + Shares + Comments

# Plot empty graph
plot(Date, Comment_Total,
     type="n",
     xlab="Days",
     ylab="Interactions",
     main="Website User Interactions")

# Area for Likes
polygon(c(Date, rev(Date)),
        c(Likes, rep(0,5)),
        col="skyblue",
        border=NA)

# Area for Shares
polygon(c(Date, rev(Date)),
        c(Share_Total, rev(Likes)),
        col="lightgreen",
        border=NA)

# Area for Comments
polygon(c(Date, rev(Date)),
        c(Comment_Total, rev(Share_Total)),
        col="orange",
        border=NA)

legend("topleft",
       legend=c("Likes","Shares","Comments"),
       fill=c("skyblue","lightgreen","orange"))