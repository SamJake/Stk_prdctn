#install.packages("ggplot2")
library(ggplot2)

#install.packages("nlme")
library(nlme)

#install.packages("lubridate")
library(lubridate)


get_q_stock <- function(file_path)
{
classes <- c("character","numeric","numeric","numeric","numeric","numeric","numeric")
names(classes) <- c("Trade_dt","Open","High","Low","Close","Volume","Adj Close")
df <- read.csv(file = file_path,colClasses = classes)
df$Date <- as.Date(df$Date,format="%Y-%m-%d")

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

d1 <- length(m1):1
d2 <- length(m2):1
d3 <- length(m3):1
d4 <- length(m4):1

q1 <- cbind(d1,q1_df,m1)
q2 <- cbind(d2,q2_df,m2)
q3 <- cbind(d3,q3_df,m3)
q4 <- cbind(d4,q4_df,m4)


colnames(q1)[9] <- "m"
colnames(q2)[9] <- "m"
colnames(q3)[9] <- "m"
colnames(q4)[9] <- "m"

colnames(q1)[1] <- "d"
colnames(q2)[1] <- "d"
colnames(q3)[1] <- "d"
colnames(q4)[1] <- "d"

Q <- rbind(q1,q2,q3,q4)
return(Q)
}

stock_q_graph <- function(Q)
{
g1 <- ggplot(Q,aes(x=d,y=Adj.Close,color=factor(m))) + geom_line(size=1.2)
g1 <- g1 + scale_color_manual(values=c("red2","yellow3","yellowgreen","lightblue2"),breaks=c("1","2","3","4"),labels=c("Q1(Current)","Q2","Q3","Q4(Oldest)"),name="Quarters:")
g1 <- g1 + xlab("Days in a Quarter") + ylab("Stock price in USD") + ggtitle("NYSE: BRK-A")
return(g1)
}

stock_q_graph_smooth <- function(Q)
{
g2 <- ggplot(Q,aes(x=d,y=Adj.Close,color=factor(m))) + geom_smooth(size=1.2)
g2 <- g2 + scale_color_manual(values=c("red2","yellow3","yellowgreen","lightblue2"),breaks=c("1","2","3","4"),labels=c("Q1(Current)","Q2","Q3","Q4(Oldest)"),name="Quarters:")
g2 <- g2 + xlab("Days in a Quarter") + ylab("Stock price in USD") + ggtitle("NYSE: BRK-A")
return(g2)
}



