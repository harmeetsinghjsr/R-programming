
library(corpustools)

corpus<-Corpus(VectorSource(comm$Comments))

?VectorSource

corpus[[1]][1]

corpus<-tm_msp(corpus,content_transformer(function(x)iconv(x,"lation1","ASCII",sub="")))
