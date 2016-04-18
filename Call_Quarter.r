setwd("E:/R/Repository/Stk_prdctn/Sample plots/4quarters/NYSE")
#dev.off()
graphics.off()
tickers <- c("BRK-A","BRK-B","YHOO","GOOG","MSFT")

for (sym in tickers)
{
	Q <- get_q_stock(paste("E:/R/Repository/Stk_prdctn/Test data/NYSE/",sym,".csv",sep=""))
	g1 <- stock_q_graph(Q,"NYSE",sym)
	#dev.copy(jpeg,paste("4q - ",sym,".jpeg",sep=""))
	#dev.off()
	ggsave(filename=paste("4q - ",sym,".jpeg",sep=""))
	graphics.off()
	g2 <- stock_q_graph_smooth(Q,"NYSE",sym)
	g2
	#dev.copy(jpeg,paste("4q_smooth - ",sym,".jpeg",sep=""))
	#dev.off()
	ggsave(filename=paste("4q - ",sym,"_smooth.jpeg",sep=""))
	graphics.off()
}




