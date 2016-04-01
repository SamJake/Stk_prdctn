#install.packages("RCurl")
#library("RCurl")

#install.packages("ggplot2")
#library("ggplot2")

get_stock <- function(url)
{
text <- getURL(url)

#unoptimized for large file retrieval
#df <- read.csv(textConnection(text))

#optimized for large file retrieval
df1 <- read.csv(textConnection(text),nrows=5)
classes <- sapply(df1,class)
df <- read.csv(textConnection(text),colClasses=classes)


df$Date <- as.Date(df$Date,format="%Y-%m-%d")
return(df)
}

stock_graph1 <- function(df)
{
g <- ggplot(df,aes(x=df$Date,y=df$Close)) + geom_line(col="firebrick") + xlab("Time") + ylab("Stock price in USD") + ggtitle("Yahoo! Inc. (YHOO) -NasdaqGS")
return(g)
}

stock_graph2 <- function(df)
{
g <- ggplot(df,aes(x=df$Date,y=df$Close)) + geom_point(col="olivedrab") + xlab("Time") + ylab("Stock price in USD") + ggtitle("Yahoo! Inc. (YHOO) -NasdaqGS")
return(g)
}

stock_graph3 <- function(df)
{
g <- ggplot(df,aes(x=df$Date,y=df$Close)) + geom_point(col="olivedrab") + geom_line(col="red") + geom_smooth(size=0.3) + xlab("Time") + ylab("Stock price in USD") + ggtitle("Yahoo! Inc. (YHOO) -NasdaqGS")
return(g)
}

url <- 'http://real-chart.finance.yahoo.com/table.csv?s=YHOO&d=2&e=10&f=2016&g=d&a=3&b=12&c=1996&ignore=.csv'
df <- get_stock(url)
a1 <- stock_graph1(df)
a2 <- stock_graph2(df)
a3 <- stock_graph3(df)
a1
a2
a3
