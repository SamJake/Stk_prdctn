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

stock <- "DELL"
company <- "Dell"

#assign(paste("F_",stock,sep=""),WebCorpus(GoogleFinanceSource(stock)))


F_DELL <- WebCorpus(GoogleFinanceSource("GOOGL"))

#GOOGL_fin <- corpus.update(GOOGL_fin)

#assign(paste("N_",company,sep=""),WebCorpus(GoogleNewsSource(company)))

N_Dell <- WebCorpus(GoogleNewsSource("Google"))

#GOOGL_news <- corpus.update(GOOGLnews)



sF_DELL <- sent_detect(F_DELL)
sN_Dell <- sent_detect(N_Dell)

fil_sF_DELL <- sF_DELL[grepl(stock,sF_DELL,ignore.case = FALSE)]
fil_sN_Dell <- sN_Dell[grepl(company,sN_Dell,ignore.case = FALSE)]


hF_DELL <- sapply(sF_DELL,FUN = function(x){attr(x,"Heading")})
hN_Dell <- sapply(sN_Dell,FUN = function(x){attr(x,"Heading")})