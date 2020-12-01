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
