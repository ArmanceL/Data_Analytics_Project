#### DA_Project

# Download useful R packages
library(DT)
library(Hmisc)  
library(tidyverse)
library(tidyquant)
library(ggthemes)
library(RColorBrewer)
library(corrplot)
library(psych)
library(GGally)
library(corrr)
library(corrplot)
library(ggcorrplot)
library(kableExtra)
library(DataExplorer)
library(inspectdf)

### EDA

## 1. Data preparation
## 1.1 Loading data into R
bands3 <- read.csv2("bands3.csv")

## 1.2 Response attribute transformation
n <- dim(bands3)[1]
# n = ROW = 540 observartions 
p <- dim(bands3)[2]
# p = COLUMN = 40 variables/characteristics

## 2. Data structure and summary
str(bands3)
head(bands3)
summary(bands3)
describe(bands3)
as_tibble(bands3)
datatable(bands3)

## 2.1 DataExpolrer library
introduce(bands3[,-39])
plot_intro(bands3[,-39])

# a. Missing observations
nrows <- nrow(bands3)
n.missing <- rowSums(is.na(bands3))
sum(n.missing > 0)/nrows
# [1] 0
n.complete <- sum(complete.cases(bands3))
n.complete/nrows
# [1] 1
plot_missing(bands3[,-39])

# b. Histograms
plot_histogram(bands3[,-39])

# c. Density plots
plot_density(bands3[,-39],
             ggtheme = theme_bw())

# d. Side-by-side boxplots
plot_boxplot(bands3, by='grain_screened')

# e. Variables summaries 
# ???
quanti<-1:40
mat<-matrix(0, length(quanti), 7)
colnames(mat)<-c("Min.", "1st Qu.", "Median", "Mean", "Sd", "3rd Qu.", "Max.")
rownames(mat)<-names(bands3)[quanti]
mat[,1]<-apply(bands3[,quanti], 2, min)
mat[,2]<-apply(bands3[,quanti], 2, quantile, 0.25)
mat[,3]<-apply(bands3[,quanti], 2, median)
mat[,4]<-apply(bands3[,quanti], 2, mean)
mat[,5]<-apply(bands3[,quanti], 2, sd)
mat[,6]<-apply(bands3[,quanti], 2, quantile, 0.75)
mat[,7]<-apply(bands3[,quanti], 2, max)
print(round(mat, 2))

# f. Pairwise comparison
bands3.quant <- bands3[,quanti]
plot_correlation(bands3.quant, type = 'c', cor_args = list('use'='complete.obs'))
pairs(bands3.quant)
#???
pairs.panels(bands3.quant)
ggpairs(bands3)
#???
ggpairs(bands3[,-39], ggplot2::aes())
#???
cor(bands3.quant)
#???
corrplot(cor(bands3.quant))
# ???
d<-correlate(bands3.quant)         
d %>%
+   shave() %>% # Remove the upper triangle
+   fashion()
# ???

d %>% network_plot(min_cor=.1)
# ???

corrplot.mixed(cor(bands3.quant), order="hclust", tl.col="black")
# ???

ggcorrplot(cor(bands3.quant), p.mat=cor_pmat(bands3[,quanti]), hc.order=TRUE, type='lower')
# ???

## 2.2 Inspected library
x<-inspect_types(bands3[,-39])
show_plot(x, col_palette=2)

x<-inspect_na(bands3[,-39])
show_plot(x, col_palette=5)

x<-inspect_num(bands3[,-39])
show_plot(x, col_palette=3)

x<-inspect_cat(bands3[,-39]) 
show_plot(x)

x<-inspect_cor(bands3[,-39])
show_plot(x, col_palette=4)

## 2.3 Outliers
 
