---
title: "This is the final project"
author: "Dan Magee"
date: "Sunday, February 22, 2015"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(output)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

setwd("/Users/dtman5/Desktop/iPlant_workshop/output/")
data.in <- read.csv("combined_gapMinder.tsv", sep="\t")

afghan <- subset(data.in["Afghanistan",])
nigeria <- subset(data.in["Nigeria",])
chile <- subset(data.in["Chile",])

