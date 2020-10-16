library(dplyr)
exam<-read.csv("github/csv_exam.csv")
exam

#chose class 1
exam %>% filter(class==1)

#Not class 1 chose
exam %>% filter(class!=1)

exam%>% filter(class==1 | math>=50)

exam%>% filter(class==1 & math>=50)

exam %>% select(math)

exam %>% select(class, math, english)

exam %>% select(-math)

exam %>% filter(class==1) %>% select(english)

exam %>%
  filter(class==1) %>%
  select(english)


exam %>%
  select(id,math) %>%
  head

exam %>%
  select(id,math) %>%
  head(10)

exam %>% arrange(math)  #increase data

exam %>% arrange(class, math)  #increase two data

exam %>% arrange(desc(math))  #decrease data
