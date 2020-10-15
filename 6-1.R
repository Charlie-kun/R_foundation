library(dplyr)
exam<-read.csv("github/csv_exam.csv")
exam

#chose class 1
exam %>% filter(class==1)

#Not class 1 chose
exam %>% filter(class!=1)

exam%>% filter(class==1 | math>=50)

exam%>% filter(class==1 & math>=50)
