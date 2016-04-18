setwd("E:/R/Repository/Stk_prdctn/Sample plots/4quarters/NYSE")
dev.off()


Q <- get_q_stock("E:/R/Repository/Stk_prdctn/Test data/NYSE/BRK-A.csv")
sym <- "BRK-A"
g1 <- stock_q_graph(Q,"NYSE",sym)
g1
dev.copy(jpeg,paste("4q - ",sym,".jpeg",sep=""))
dev.off()
g2 <- stock_q_graph_smooth(Q,"NYSE",sym)
g2
dev.copy(jpeg,paste("4q_smooth - ",sym,".jpeg",sep=""))
dev.off()


Q <- get_q_stock("E:/R/Repository/Stk_prdctn/Test data/NYSE/BRK-B.csv")
g1 <- stock_q_graph(Q,"NYSE","BRK-B")
g1
dev.copy(jpeg,paste("4q - ",sym,".jpeg",sep=""))
dev.off()
g2 <- stock_q_graph_smooth(Q,"NYSE","BRK-B")
g2
dev.copy(jpeg,paste("4q_smooth - ",sym,".jpeg",sep=""))
dev.off()


Q <- get_q_stock("E:/R/Repository/Stk_prdctn/Test data/NYSE/YHOO.csv")
g1 <- stock_q_graph(Q,"NYSE","YHOO")
g1
dev.copy(jpeg,paste("4q - ",sym,".jpeg",sep=""))
dev.off()
g2 <- stock_q_graph_smooth(Q,"NYSE","YHOO")
g2
dev.copy(jpeg,paste("4q_smooth - ",sym,".jpeg",sep=""))
dev.off()


Q <- get_q_stock("E:/R/Repository/Stk_prdctn/Test data/NYSE/GOOG.csv")
g1 <- stock_q_graph(Q,"NYSE","GOOG")
g1
dev.copy(jpeg,paste("4q - ",sym,".jpeg",sep=""))
dev.off()
g2 <- stock_q_graph_smooth(Q,"NYSE","GOOG")
g2
dev.copy(jpeg,paste("4q_smooth - ",sym,".jpeg",sep=""))
dev.off()


Q <- get_q_stock("E:/R/Repository/Stk_prdctn/Test data/NYSE/MSFT.csv")
g1 <- stock_q_graph(Q,"NYSE","MSFT")
g1
dev.copy(jpeg,paste("4q - ",sym,".jpeg",sep=""))
dev.off()
g2 <- stock_q_graph_smooth(Q,"NYSE","MSFT")
g2
dev.copy(jpeg,paste("4q_smooth - ",sym,".jpeg",sep=""))
dev.off()

