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

myplot <- ggplot(data = iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species))
summary(myplot)

# why shape = Species?
# because we're mapping, not setting
myplot + geom_point(aes(shape=Species), size = 3)

# want the first element of dim(diamonds) is the # of rows
# sample from 1 to the number of rows 1,000 times
# those are the rows we want
# way to randomly pull from 1 to the length of our dataset 1000 times
# store as d2
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]

# look at the data set this way... decide to plot by carat by price
# sort the color by color after seeing this
head(d2)
d2plot <- ggplot(d2, aes(x=carat, y=price, color=color))

d2plot + geom_point()

?geom_boxplot

library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()

# use facets to break up the data with facet_grid
# x axis is shared among all three, y axis is repeated
ggplot(iris, aes(x = Sepal.Length, Sepal.Width, color=Species)) + geom_point() + facet_grid(. ~ Species)

# load the color brewer
library("reshape2")
library("RColorBrewer")

# check out these cool color brewer things 
# melt it so they're all in a column
df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) +
  geom_bar(stat="identity", position = "dodge") + 
  scale_fill_brewer(palette = "Set1")