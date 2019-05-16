library(tidyverse)
getwd()
setwd("C:/Edx/projects")
getwd()

tab1 <- read_csv("tab1.csv") 
tab2 <- read_csv("tab2.csv") 

dim(tab1) # 5 2
dim(tab2) # 6 2

dat1 <- left_join(tab1, tab2, by = "state") 
dim(dat1) # 5 3

dat2 <- right_join(tab1, tab2, by = "state") 
dim(dat2) # 6 3

dat3 <- full_join(tab1, tab2, by = "state") 
dim(dat3) # 8 3

dat4 <- inner_join(tab1, tab2, by = "state") 
dim(dat4) # 3 3

dat5 <- semi_join(tab1, tab2, by = "state")
dim(dat5) # 3 2

dat6 <- anti_join(tab1, tab2, by = "state")
dim(dat6) # 2 2
