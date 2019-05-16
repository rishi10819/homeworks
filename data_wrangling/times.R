library(tidyverse)
getwd()
setwd("C:/Edx/projects")
getwd()
d <- read_csv("times.txt") 

race_times1 <- read_csv("times.txt") 
race_times2 <- read_csv("times.txt", col_names = TRUE) 
race_times3 <- read_delim("times.txt", delim = ",") 
