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

stock <- "GOOGL"
company <- "Google"
type <- 1

text_mining <- function(stock,type)
{

if (type==1)
{
	corpus <- WebCorpus(GoogleFinanceSource(stock))
	#GOOGL_fin <- corpus.update(GOOGL_fin)
}else 
{
	corpus <- WebCorpus(GoogleNewsSource(stock))
	#GOOGL_news <- corpus.update(GOOGLnews)
}

	sentences <- sent_detect(corpus)
	#sentences <- gsub("[[:punct:]]","",sentences)
	
	headings <- vector(length=length(corpus$content))
	for (i in 1:length(corpus$content))
	{
		headings[i] <- meta(corpus[[i]])$heading
	}

	descriptions <- vector(length=length(corpus$content))
	for ( i in 1:length(corpus$content))
	{
		descriptions[i] <- meta(corpus[[i]])$description
	} 

	select_sentences <- sentences[grepl(stock,sentences,ignore.case = FALSE)]
	select_headings <- headings[grepl(stock,headings,ignore.case = FALSE)]
	select_descriptions <- descriptions[grepl(stock,descriptions,ignore.case = FALSE)]

	select_sentences <- gsub("[[:punct:]]"," ",select_sentences)
	select_headings <- gsub("[[:punct:]]"," ",select_headings)
	select_descriptions <- gsub("[[:punct:]]"," ",select_descriptions)

}


text_mining(stock,1)
text_mining(company,2)