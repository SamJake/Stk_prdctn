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

stock <- "NASDAQ:DELL"
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


# hF_DELL <- sapply(F_DELL,FUN = function(x){attr(x,"heading")})
# hN_Dell <- sapply(N_Dell,FUN = function(x){attr(x,"heading")})


# dF_DELL <- sapply(F_DELL, FUN = function(x){attr(x,"description")})
# dN_Dell <- sapply(N_Dell, FUN = function(x){attr(x,"description")})

#heading => id
#description => id

fil_dF_DELL <- dF_DELL[grepl(stock,dF_DELL,ignore.case = FALSE)]
fil_dN_Dell <- dN_Dell[grepl(company,dN_Dell,ignore.case = FALSE)]

meta(F_DELL[[1]])
str(meta(F_DELL[[1]]))
meta(F_DELL[[1]])$heading
meta(F_DELL[[1]])$description



heading <- vector()
for (i in 1:length(F_DELL$content))
{
	heading[i] <- meta(F_DELL[[i]])$heading
}




description <- vector()
for ( i in 1:length(F_DELL$content))
{
    description[i] <- meta(F_DELL[[i]])$description
} 
