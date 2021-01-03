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

install.packages("stringr")
library(stringr)

txt <- str_replace_all(txt,"\\W", " ")
