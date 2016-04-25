install.packages("tm")
install.packages("tm.plugin.webmining")
install.packages("XML")
install.packages("RCurl")

library("tm")
library("tm.plugin.webmining")
library("XML")
library("RCurl")


GOOGL_fin <- WebCorpus(GoogleFinanceSource,"GOOGL")
str(GOOGL_fin)
class(GOOGL_fin)
meta(GOOGL_fin)
meta(GOOGL_fin[[1]])

GOOGL_fin <- corpus.update(GOOGL_fin)

GOOGLnews <- corpus.update(GOOGLnews)


GOOGLnews <- WebCorpus(GoogleFinanceSource,"GOOGL")
str(GOOGLnews)
class(GOOGLnews)
meta(GOOGLnews)
meta(GOOGLnews[[1]])



GOOGLnews <- corpus.update(GOOGLnews)
