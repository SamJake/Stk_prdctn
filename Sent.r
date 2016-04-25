install.packages("tm")
install.packages("tm.plugin.webmining")
install.packages("XML")
install.packages("RCurl")
install.packages("openNLP")
install.packages("qdap")

library("tm")
library("tm.plugin.webmining")
library("XML")
library("RCurl")
library("openNLP")
library("qdap")



GOOGL_fin <- WebCorpus(GoogleFinanceSource,"GOOGL")

GOOGL_fin <- corpus.update(GOOGL_fin)


GOOGLnews <- WebCorpus(GoogleFinanceSource,"GOOGL")

GOOGLnews <- corpus.update(GOOGLnews)



stock <- "GOOGL"