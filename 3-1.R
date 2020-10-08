var1 <- c(1,2,4,7,8)   #Create var1 for number of five variate
var1

var2 <- c(1:5)  #Create var2 for 1 to 5 number.
var2

var3 <-seq(1,5) #Create var3 for 1 to 5 number.
var3

var4<- seq(1,10, by=2)  # Numbers from 1 to 10 in 2 increments.
var4

var5 <- seq(1,10, by=3) #Numbers from 1 to 10 in 3 increments.
var5

var1+2  #Display for +2 each var1's numbers.

var1+var2   #The sum of each element of var1 and var2.

str1 <- "a"
str1

str2 <-"text"
str2

str3 <- "hello world"
str3

str4 <-c("a", "b", "c")
str4

str5 <- c("Hello!", "World", "is", "good!")
str5

#Impossible str Calculate 
str1+2

#Search for Numbers              
x <-c(1,2,3)
x

mean(x)

max(x)

min(x)

#Sum words 
paste(str5, collapse=",")

paste(str5, collapse=" ")

x_mean <- mean(x)

x_mean

str5_paste <- paste(str5, collapse=" ")

str5_paste

install.packkage("ggplot2")

#ggplot2 packkage load
library(ggplot2)

# Make some alphabet group
x <-c("a", "a", "b", "c")
x

#graf display
qplot(x)
