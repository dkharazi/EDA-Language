## Overview

Around the world, people are spending an increasing amount of time on their mobile devices for email, social networking, banking and a whole range of other activities. But typing on mobile devices can be a serious pain. SwiftKey, our corporate partner in this capstone, builds a smart keyboard that makes it easier for people to type on their mobile devices. One cornerstone of their smart keyboard is predictive text models. When someone types _"I went to the"_, the keyboard presents three options for what the next word might be. For example, the three words might be gym, store, restaurant. In this capstone you will work on understanding and building predictive text models like those used by SwiftKey.

For more information about some of the basic natural language processing resources, please refer to the links below. You are welcome to use these resources or any others you can find while performing this analysis. I should state that I am not an expert in natural language processing. The purpose of this exploratory analysis is to explore new data types and understand the text that has been scraped from popular sites, such as Twitter, blog sites, and news sites.

Here are a few resources that might be good places to start as you tackle any further analysis usng natural language processing:

[Text mining infrastucture in R](http://www.jstatsoft.org/v25/i05/)  

[CRAN Task View: Natural Language Processing](http://cran.r-project.org/web/views/NaturalLanguageProcessing.html)  

[Videos](https://www.youtube.com/user/OpenCourseOnline/search?query=NLP) and [Slides](https://web.stanford.edu/~jurafsky/NLPCourseraSlides.html) from Stanford Natural Language Processing course

## Purpose of Analysis

The overall goal of this analysis is to develop a text algorithm and fit a predictive model in the future using the natural language tools available in R. In order to do this, we will need to first review the data, then perform some basic exploratory analysis, and lastly state any initial insights gathered from the exploratory analysis, which will be used for future modeling. Specifically, we will need to include the following in our research:

- Basic summaries
- Word counts, line counts, and basic data tables
- Basic plots, such as word clouds, to illustrate features of the data

After examining the frequencies of each word from the data, we should compare the frequencies that have been produced using Zipf's law, which is a law that relates to natural language utterances. For more information about Zipf's law, please refer below to a description pulled from Wikipedia.

## Description about Zipf's Law

Zipf's law is an empirical law formulated using mathematical statistics that refers to the fact that many types of data studied in the physical and social sciences can be approximated with a Zipfian distribution, one of a family of related discrete power law probability distributions. Zipf distribution is related to the zeta distribution, but is not identical.

For example, Zipf's law states that given some corpus of natural language utterances, the frequency of any word is inversely proportional to its rank in the frequency table. Thus the most frequent word will occur approximately twice as often as the second most frequent word, three times as often as the third most frequent word, etc.: the rank-frequency distribution is an inverse relation. For example, in the Brown Corpus of American English text, the word the is the most frequently occurring word, and by itself accounts for nearly 7% of all word occurrences (69,971 out of slightly over 1 million). True to Zipf's Law, the second-place word of accounts for slightly over 3.5% of words (36,411 occurrences), followed by and (28,852). Only 135 vocabulary items are needed to account for half the Brown Corpus.

## References

Fagan, Stephen; Gençay, Ramazan (2010), "An introduction to textual econometrics", in Ullah, Aman; Giles, David E. A., Handbook of Empirical Economics and Finance, CRC Press, pp. 133–153, ISBN 9781420070361. P. 139: "For example, in the Brown Corpus, consisting of over one million words, half of the word volume consists of repeated uses of only 135 words."
