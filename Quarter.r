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
