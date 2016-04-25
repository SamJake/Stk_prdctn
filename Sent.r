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



GOOGL_fin <- WebCorpus(GoogleFinanceSource("GOOGL"))

#GOOGL_fin <- corpus.update(GOOGL_fin)


GOOGL_news <- WebCorpus(GoogleNewsSource("Google"))

#GOOGL_news <- corpus.update(GOOGLnews)



stock <- "GOOGL"

sGOOGL_fin <- sent_detect(GOOGL_fin)
sGOOGL_news <- sent_detect(GOOGL_news)

fil_news <- sGOOGL_news[grepl("Google",sGOOGL_news,ignore.case = FALSE)]
fil_fin <- sGOOGL_fin[grepl(stock,sGOOGL_fin,ignore.case = FALSE)]


sapply(sGOOGL_fin,FUN = function(x){attr(x,"Heading")})