english <-c(90,80,60,70)

math<-c(50,60,100,20)

df_midterm <- data.frame(english, math)

class<-c(1, 1, 2, 2)
class

df_midterm<-data.frame(english, math, calss)

df_midterm

mean(df_midterm$english)

mean(df_midterm$math)

df_midterm <- data.frame(english=c(90,80,60,70),
                         math=c(50,60,100,20),
                         class=c(1,1,2,2))

df_midterm

#Load excel file
install.packages("readxl")
library(readxl)

#folder in a project folder load possible
df_exam<-read_excel("github/excel_exam.xlsx")
df_exam

#mean for english score
mean(df_exam$english)

#Don't have a data variable name
df_exam2<-read_excel("github/excel_exam_novar.xlsx")
df_exam2

df_exam2<-read_excel("github/excel_exam_novar.xlsx", col_names = F)
df_exam2

#Load csv file
df_csv_exam<-read.csv("github/csv_exam.csv")
df_csv_exam

#save csv file
df_midterm1<-data.frame(english=c(90,80,60,70),
                       math=c(50,60,100,20), 
                       class=c(1,1,2,2))
df_midterm1
write.csv(df_midterm1, file="github/df_midterm.csv")

#Save RDS
saveRDS(df_midterm1, file="test/df_midterm.rds")

#Delete df_midterm
rm(df_midterm)

#Read RDS file
df_midterm1<-readRDS("test/df_midterm.rds")
df_midterm1
