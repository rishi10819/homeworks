library(tidyverse)
getwd()
setwd("C:/Edx/projects")
getwd()

d3 <- read_csv("times3.csv") 
d3

#Which commands will help you "tidy" the data?

tidy_data <- d3 %>%
  gather(year, time, `2015`:`2017`)
