# ggplot learning script
# Dan Magee
# 22 Feb 2015
# djmagee@asu.edu

install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")
library("reshape2")
library("ggthemes")
library("plyr")

myplot <- ggplot(data = iris, aes(x=Sepal.Length, y=Sepal.Width))
summary(myplot)

ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point()
