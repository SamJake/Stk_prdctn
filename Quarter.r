#install.packages("ggplot2")
library(ggplot2)

#install.packages("nlme")
library(nlme)

#install.packages("lubridate")
library(lubridate)

classes <- c("character","numeric","numeric","numeric","numeric","integer","numeric")
names(classes) <- c("Trade_dt","Open","High","Low","Close","Volume","Adj Close")
df <- read.csv(file = "J:/R/Test/test/Data/Stock_files_/stock_SWELECT.csv",colClasses = classes)
df$Date <- as.Date(df$Date,format="%m/%d/%Y")

#curr_dt <- Sys.Date()
df_dt <- df[[1,1]]
y <- substr(df_dt,1,4)


q_mid <- c("-02-15","-05-15","-08-15","-11-15")
q_mid <- paste(y,q_mid,sep="")
q_mid <- as.Date(q_mid,format = "%Y-%m-%d")

for(i in 1:length(q_mid))
{
	if(df_dt >= q_mid[i])
	{
		temp_dt <- q_mid[i]
	}
}

frst_q_strt_dt <- round_date(temp_dt,"quarter")
q_start <- c(frst_q_strt_dt,frst_q_strt_dt -months(3),frst_q_strt_dt -months(6),frst_q_strt_dt -months(9))


q_end <- q_start + months(3) - days(1)
q_end[1] <- df_dt


q1_df <- subset(df,df$Date>=q_start[1] & df$Date<=q_end[1])
q2_df <- subset(df,df$Date>=q_start[2] & df$Date<=q_end[2])
q3_df <- subset(df,df$Date>=q_start[3] & df$Date<=q_end[3])
q4_df <- subset(df,df$Date>=q_start[4] & df$Date<=q_end[4])


m1 <- matrix(1,length(q1_df$Date))
m2 <- matrix(2,length(q2_df$Date))
m3 <- matrix(3,length(q3_df$Date))
m4 <- matrix(4,length(q4_df$Date))

g1 <- ggplot(q1_df,aes(x=Date,y=Close)) + geom_line(size=1)
g2 <- ggplot(q2_df,aes(x=Date,y=Close)) + geom_line(size=1)
g3 <- ggplot(q3_df,aes(x=Date,y=Close)) + geom_line(size=1)
g4 <- ggplot(q4_df,aes(x=Date,y=Close)) + geom_line(size=1)