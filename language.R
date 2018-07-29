## Import libraries
library(knitr)
library(wordcloud)
library(quanteda)
library(ggplot2)

## Import data
twit <- readLines("~/Desktop/final/en_US/twitter.txt")
news <-readLines("~/Desktop/final/en_US/news.txt")
blogs <- readLines("~/Desktop/final/en_US/blogs.txt")

## Set the seed
set.seed(456)

## Number of observations in the datasets
length(twit)
length(news)
length(blogs)

## Size of data
format(object.size(twit), units = "auto")
format(object.size(news), units = "auto")
format(object.size(blogs), units = "auto")

## Word cloud of twitter data
wordcloud(twit, max.words = 100, random.order = FALSE)

## Word cloud of news data
wordcloud(news, max.words = 100, random.order = FALSE)

## Word cloud of blogging data
wordcloud(blogs, max.words = 100, random.order = FALSE)

## Sample the data
sample <- sample(c(twit, news, blogs), 10000, replace = FALSE)

## Clean the text
sample <- gsub("[^0-9A-Za-z///' ]", "", sample) # removing special characters
sample <- gsub("(f|ht)(tp)(s?)(://)(\\S*)", "", sample) # removing urls
sample <- gsub(" #\\S*","", sample)  # removing hash tags 

## Create document-term matrices
dfm1 <- dfm(sample, ngrams = 1, verbose = FALSE, concatenator = " ")
dfm2 <- dfm(sample, ngrams = 2, verbose = FALSE, concatenator = " ")
dfm3 <- dfm(sample, ngrams = 3, verbose = FALSE, concatenator = " ")

## Get frequencies of each word
dfm1 <- as.data.frame(as.matrix(docfreq(dfm1)))
dfm2 <- as.data.frame(as.matrix(docfreq(dfm2)))
dfm3 <- as.data.frame(as.matrix(docfreq(dfm3)))

## Sort by frequency
dfm1 <- sort(rowSums(dfm1), decreasing=TRUE)[1:10]
dfm2 <- sort(rowSums(dfm2), decreasing=TRUE)[1:10]
dfm3 <- sort(rowSums(dfm3), decreasing=TRUE)[1:10]

## Create data frames for future plots
dfm1 <- data.frame(word = names(dfm1), freq = dfm1, row.names = 1:length(dfm1))
dfm2 <- data.frame(word = names(dfm2), freq = dfm2, row.names = 1:length(dfm2))
dfm3 <- data.frame(word = names(dfm3), freq = dfm3, row.names = 1:length(dfm3))

## Convert "words" to factor variable
dfm1$word <- with(dfm1, factor(word, levels = word))
dfm2$word <- with(dfm2, factor(word, levels = word))
dfm3$word <- with(dfm3, factor(word, levels = word))

## Plot top 10 most popular unigrams
ggplot(dfm1, aes(word, freq)) +
  geom_bar(stat = "identity", fill = "blue") + 
  labs(x = "", y = "Frequency") +
  ggtitle("Top 10 Unigrams") +
  theme(plot.title = element_text(hjust = 0.5), axis.text.x = element_text(angle = 45, hjust = 1))

## Plot top 10 most popular bigrams
ggplot(dfm2, aes(word, freq)) +
  geom_bar(stat = "identity", fill = "blue") + 
  labs(x = "", y = "Frequency") +
  ggtitle("Top 10 Bigrams") +
  theme(plot.title = element_text(hjust = 0.5), axis.text.x = element_text(angle = 45, hjust = 1))

## Plot top 10 most popular trigrams
ggplot(dfm3, aes(word, freq)) +
  geom_bar(stat = "identity", fill = "blue") + 
  labs(x = "", y = "Frequency") +
  ggtitle("Top 10 Trigrams") +
  theme(plot.title = element_text(hjust = 0.5), axis.text.x = element_text(angle = 45, hjust = 1))