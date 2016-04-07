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


q_mid <- c("-02-15","-05-15","-08-15","-11-15")
q_mid <- paste(y,q_mid,sep="")
q_mid <- as.Date(q_mid,format = "%Y-%m-%d")

q_start <- c("-01-01","-04-01","-07-01","-10-01")
q_start <- paste(y,q_start,sep="")
q_start <- as.Date(q_start,format = "%Y-%m-%d")

q_end <- c("-02-15","-05-15","-08-15","-11-15")
q_end <- paste(y,q_end,sep="")
q_end <- as.Date(q_end,format = "%Y-%m-%d")

