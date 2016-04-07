#install.packages("ggplot2")
library(ggplot2)

#install.packages("nlme")
library(nlme)


classes <- c("character","numeric","numeric","numeric","numeric","integer","numeric")
names(classes) <- c("Trade_dt","Open","High","Low","Close","Volume","Adj Close")
df <- read.csv(file = "J:/R/Test/Data/Stock_files_/stock_SWELECT.csv",colClasses = classes)
df$Date <- as.Date(df$Date,format="%m/%d/%Y")

#curr_dt <- Sys.Date()
df_dt <- df[[1,1]]
y <- substr(df_dt,1,4)

x1 <- "-02-15"
x2 <- "-05-15"
x3 <- "-08-15"
x4 <- "-11-15"

x1 <- paste(y,x1,sep="")
x2 <- paste(y,x2,sep="")
x3 <- paste(y,x3,sep="")
x4 <- paste(y,x4,sep="")

x1 <- as.Date(x1,format="%Y-%m-%d")
x2 <- as.Date(x2,format="%Y-%m-%d")
x3 <- as.Date(x3,format="%Y-%m-%d")
x4 <- as.Date(x4,format="%Y-%m-%d")

if((df_dt > x1) && (df_dt > x2) & (df_dt > x3)
{
	q1 
	q2
	q3
	q4
}
