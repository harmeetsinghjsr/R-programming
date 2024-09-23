df <- read.csv(file.choose(), stringsAsFactors = FALSE)
str(df)

View(df)
df$type <- factor(df$type)
str(df$type)
table(df$type)

library(tm)
sms <- iconv(df$text, to = "UTF-8")

sms <- Corpus(VectorSource(sms))
View(sms)
inspect(sms[1:5])
sms[[1]]$content

as.character(sms[[1]])

lapply(sms[1:2],as.character)

sms_clean <- tm_map(sms, content_transformer(tolower))
sms_clean <- tm_map(sms_clean, removeNumbers)
sms_clean <- tm_map(sms_clean, removePunctuation)
sms_clean <- tm_map(sms_clean, removeWords, stopwords("en"))
sms_clean <- tm_map(sms_clean, stripWhitespace)
View(sms_clean)

# install.packages("SnowballC")
library(SnowballC)

sms_train <- sms_stem[1:4169]
sms_test <- sms_stem[4170:5572]
prop.table(table(sms_train$label))
prop.table(table(sms_test$label))

sms_dtm <- DocumentTermMatrix(sms_train)
sms_dtm
sms_dtm_train<-sms_dtm[1:4169,]
sms_dtm_test<-sms_dtm[4170:5572,]

# install.packages("wordcloud")

library(wordcloud)
library(RColorBrewer)

wordcloud(sms_clean, min.freq = 50,scale = c(3,1), random.order = FALSE,color = brewer.pal(5, "Dark2"))
findFreqTerms(sms_dtm_train, lowfreq = 50)

sms_freq_words <- findFreqTerms(sms_dtm_train, lowfreq = 50)
sms_freq_words

library(e1071)
sms_classifier <- naiveBayes(sms_dtm_train, sms_train$type)
View(sms_classifier)
