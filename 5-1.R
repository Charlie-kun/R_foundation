exam <- read.csv("github/csv_exam.csv")

head(exam)    #display first to 6 row

head(exam, 10)  #display  first to 10 row

tail(exam)  #display end 6 row

tail(exam, 10)  #display end 10 row

View(exam)  #display in data viewer

dim(exam) #check for data size (rows, columns)

str(exam) #check for data property

summary(exam)   #summary for exam

mpg <- as.data.frame(ggplot2::mpg)

head(mpg)

View(mpg)

str(mpg)

summary(mpg)

#5-2 change property name

df_raw<-data.frame(var1=c(1,2,1),
                   var2=c(2,3,2))

df_raw

install.packages("dplyr")
library(dplyr)

df_new<-df_raw

df_new

df_new<-rename(df_new, v2=var2) #var2 change v2

#Make Derived Variable
df<-data.frame(var1=c(4,3,8),
               var2=c(2,6,1))

df

df$var_sum<-df$var1+df$var2 #make sum derived variable

df

df$var_mean<-(df$var1+df$var2)/2

df

mpg$total<-(mpg$cty+mpg$hwy)/2  #total efficiency
head(mpg)
