# Sales Data

Month <- 1:3

ProductA <- c(2000,2200,2400)
ProductB <- c(1500,1800,1600)
ProductC <- c(1200,1400,1100)

# Cumulative totals
TotalB <- ProductA + ProductB
TotalC <- ProductA + ProductB + ProductC

# Empty plot
plot(Month, TotalC,
     type="n",
     xaxt="n",
     xlab="Month",
     ylab="Sales",
     main="Overall Sales Trend")

axis(1,
     at=1:3,
     labels=c("January","February","March"))

# Product A
polygon(c(Month,rev(Month)),
        c(ProductA,rep(0,3)),
        col="skyblue",
        border=NA)

# Product B
polygon(c(Month,rev(Month)),
        c(TotalB,rev(ProductA)),
        col="lightgreen",
        border=NA)

# Product C
polygon(c(Month,rev(Month)),
        c(TotalC,rev(TotalB)),
        col="orange",
        border=NA)

legend("topleft",
       legend=c("Product A","Product B","Product C"),
       fill=c("skyblue","lightgreen","orange"))