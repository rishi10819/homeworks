library(tidyverse)
getwd()
setwd("C:/Edx/projects")
getwd()

df1 <- read_csv("df1.csv") 
df2 <- read_csv("df2.csv") 

head(df1)
head(df2)

final1 <- union(df1, df2) 
head(final1)

final2 <- setdiff(df1, df2) 
head(final2)

final3 <- setdiff(df2, df1) 
head(final3)

final4 <- intersect(df1, df2)
head(final4)
