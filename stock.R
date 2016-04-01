#install.packages("RCurl")
#library("RCurl")

#install.packages("ggplot2")
#library("ggplot2")

get_stock <- function(url)
{
text <- getURL(url)
df <- read.csv(textConnection(text))
df$Date <- as.Date(df$Date,format="%Y-%m-%d")
return(df)
}

stock_graph1 <- function(df)
{
g <- ggplot(stock_data,aes(x=stock_data$Date,y=stock_data$Close)) + geom_line(col="red")
return(g)
}

stock_graph2 <- function(df)
{
g1 <- ggplot(stock_data,aes(x=stock_data$Date,y=stock_data$Close)) + geom_point(col="yellow")
return(g1)
}

url <- 'http://real-chart.finance.yahoo.com/table.csv?s=YHOO&d=2&e=10&f=2016&g=d&a=3&b=12&c=1996&ignore=.csv'
df <- get_stock(url)
a1 <- stock_graph1(df)
a2 <- stock_graph2(df)
a1
a2
