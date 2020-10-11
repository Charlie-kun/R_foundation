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

