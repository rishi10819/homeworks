library(tidyverse)
getwd()
setwd("C:/Edx/projects")
getwd()

stats <- read_csv("stats.csv") 

#Correct result

tidy_data_stats <- stats %>%
  separate(col = key, into = c("player", "variable_name"), sep = "_", extra = "merge") %>% 
  spread(key = variable_name, value = value)

#this is not what we want.
#I am adding this here just to check, what it returns.

tidy_data_stats_2 <- stats %>%
  separate(col = key, into = c("player", "variable_name1", "variable_name2"), sep = "_", fill = "right") %>% 
  unite(col = variable_name, variable_name1, variable_name2, sep = "_") %>% 
  spread(key = variable_name, value = value)

#this is not what we want.
#I am adding this here just to check, what it returns.

tidy_data_stats_3 <- stats %>%
  separate(col = key, into = c("player", "variable_name"), sep = "_") %>% 
  spread(key = variable_name, value = value)
