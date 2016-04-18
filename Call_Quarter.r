Q <- get_q_stock("E:/R/Repository/Stk_prdctn/Test data/NYSE/BRK-A.csv")
g1 <- stock_q_graph(Q,"NYSE","BRK-A")
g2 <- stock_q_graph_smooth(Q,"NYSE","BRK-A")
g1

Q <- get_q_stock("E:/R/Repository/Stk_prdctn/Test data/NYSE/BRK-B.csv")
g1 <- stock_q_graph(Q,"NYSE","BRK-B")
g2 <- stock_q_graph_smooth(Q,"NYSE","BRK-B")
g1

Q <- get_q_stock("E:/R/Repository/Stk_prdctn/Test data/NYSE/YHOO.csv")
g1 <- stock_q_graph(Q,"NYSE","YHOO")
g2 <- stock_q_graph_smooth(Q,"NYSE","YHOO")
g1

Q <- get_q_stock("E:/R/Repository/Stk_prdctn/Test data/NYSE/GOOG.csv")
g1 <- stock_q_graph(Q,"NYSE","GOOG")
g2 <- stock_q_graph_smooth(Q,"NYSE","GOOG")
g1

Q <- get_q_stock("E:/R/Repository/Stk_prdctn/Test data/NYSE/MSFT.csv")
g1 <- stock_q_graph(Q,"NYSE","MSFT")
g2 <- stock_q_graph_smooth(Q,"NYSE","MSFT")
g2

