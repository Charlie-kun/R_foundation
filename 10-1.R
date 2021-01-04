#install.packages("rJava")
#install.packages("memoise")
#install.packages(c("stringr", "hash", "tau", "Sejong", "RSQLite", "devtools"), type = "binary")
#install.packages("remotes")
#remotes::install_github("haven-jeon/KoNLP", 
#                        upgrade = "never",
#                        INSTALL_opts=c("--no-multiarch"))

library(KoNLP)
library(dplyr)

useNIADic()

txt <- readLines("github/hiphop.txt")
head(txt)

#install.packages("stringr")
library(stringr)

txt <- str_replace_all(txt,"\\W", " ")


extractNoun("대한민국의 영토는 한반도와 그 부속도서로 한다")

nouns <-extractNoun(txt)

wordcount <-table(unlist(nouns))

df_word <-as.data.frame(wordcount, stringsAsFactors = F)

df_word <-rename(df_word, word =Var1, freq=Freq)

df_word <- filter(df_word, nchar(word) >= 2)

top_20 <-df_word %>% arrange(desc(freq))%>% head(20)

top_20

