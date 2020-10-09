english <- c(90,80,60,70)

math <- c(50,60,100,20)

#make a data frame
df_midterm <- data.frame(english, math)

df_midterm

class <- c(1,1,2,2)

df_midterm <- data.frame(english, math, class)

#mean english
mean(df_midterm$english)
