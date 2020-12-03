df <- data.frame(sex=c("M", "F", NA, "M", "F"),
                score=c(5,4,3,4,NA))

df

is.na(df)   #check Missing Value

table(is.na(df))  #print missing value rate

table(is.na(df$sex))  #print missing value rate at sex

table(is.na(df$score))  #print missing value rate at score

mean(df$score)

sum(df$score)


#delete missing value row
library(dplyr)  #dplyr package load
df %>% filter(is.na(score))   # Na score value print

df %>% filter(!is.na(score))   # not Na score value print

df_nomiss <- df%>% filter(!is.na(score))
mean(df_nomiss$score)

sum(df_nomiss$score)

df_nomiss <- df %>% filter(!is.na(score)&!is.na(sex)) #delete missing value at sex, score

df_nomiss

df_nomiss2 <- na.omit(df)   #delete all missing vlaue

df_nomiss2

mean(df$score,na.rm=T)

sum(df$score,na.rm=T)

exam <- read.csv("./github/csv_exam.csv")     #path

exam[c(3,8,15), "math"] <-NA

exam

exam %>% summarise(mean_math=mean(math))

exam %>% summarise(mean_math=mean(math, na.rm=T), sum_math=sum(math, na.rm = T), median_math=median(math, na.rm=T))

mean(exam$math, na.rm=T)

exam $math <- ifelse(is.na(exam$math), 55, exam$math)   #change value na->55
table(is.na(exam$math))

exam

mean(exam$math)
