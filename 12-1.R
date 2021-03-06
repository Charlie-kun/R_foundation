'''
#install.packages("plotly")
library(plotly)

library(ggplot2)
p<-ggplot(data=mpg, aes(x=displ, y=hwy, col=drv))+geom_point()

ggplotly(p)

p <- ggplot(data=diamonds, aes(x=cut, fill=clarity))+ geom_bar(position="dodge")

ggplotly(p)
'''

economics <-ggplot2::economics
head(economics)

#install.packages("xts")

library(xts)
eco <- xts(economics$unemploy, order.by=economics$date)
head(eco)

#install.packages("dygraphs")
library(dygraphs)
dygraph(eco)

dygraph(eco) %>% dyRangeSelector()

eco_a <-xts(economics$psavert, order.by=economics$date)

eco_b <- xts(economics$unemploy/1000, order.by = economics$date)

eco2 <-cbind(eco_a, eco_b)

colnames(eco2) <-c("psavert", "unemploy")
head(eco2)

dygraph(eco2) %>% dyRangeSelector()
