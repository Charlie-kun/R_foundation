# library(dplyr)
# 
# exam<-read.csv("github/csv_exam.csv")
# exam
# 
# #chose class 1
# exam %>% filter(class==1)
# 
# #Not class 1 chose
# exam %>% filter(class!=1)
# 
# exam%>% filter(class==1 | math>=50)
# 
# exam%>% filter(class==1 & math>=50)
# 
# exam %>% select(math)
# 
# exam %>% select(class, math, english)
# 
# exam %>% select(-math)
# 
# exam %>% filter(class==1) %>% select(english)
# 
# exam %>%
#   filter(class==1) %>%
#   select(english)
# 
# 
# exam %>%
#   select(id,math) %>%
#   head
# 
# exam %>%
#   select(id,math) %>%
#   head(10)
# 
# exam %>% arrange(math)  #increase data
# 
# exam %>% arrange(class, math)  #increase two data
# 
# exam %>% arrange(desc(math))  #decrease data
# 
# exam %>%
#   mutate(total=math+english+science) %>%
#   head
# 
# exam %>%
#   mutate(total=math+english+science,
#          mean=(math+english+science)/3) %>%
#   head
# 
# exam %>%
#   mutate(test=ifelse(science >=60, "pass", "fail")) %>%
#   head
# 
# exam %>%
#   mutate(total=math+english+science) %>%
#   arrange(total) %>%
#   head
# 
# exam %>% summarise(mean_math=mean(math))
# 
# exam %>%
#   group_by(class) %>%
#   summarise(mean_math=mean(math))
# 
# exam %>%
#   group_by(class) %>%
#   summarise(mean_math=mean(math),
#             sum_math=sum(math),
#             median_math=median(math),
#             n=n())
# 
# mpg%>%
#   group_by(manufacturer, drv) %>%
#   summarise(mean_cty=mean(cty)) %>%
#   head(10)

#sum data
test1 <- data.frame(id=c(1,2,3,4,5), midterm=c(60, 80, 70, 90, 85))

test2 <- data.frame(id=c(1,2,3,4,5), final=c(70,83,65,95,80))

test1

test2

total <- left_join(test1, test2, by="id")
total


name <- data.frame(class=c(1,2,3,4,5),teacher=c("kim", "lee", "park", "choi", "jung"))

name

exam_new <- left_join(exam, name, by="class")
exam_new


group_a <- data.frame(id=c(1,2,3,4,5), test=c(60,80,70,90,85))

group_b <- data.frame(id=c(6,7,8,9,10), test=c(70, 83, 65, 95, 80))

bind_rows()

group_all<-bind_rows(group_a, group_b)
group_all
