library(tidyverse)
#getwd()
#setwd("C:/Edx/projects")
#getwd()

animals <- c("cat", "puppy", "Moose", "MONKEY")
pattern1 <- "[a-z]"
str_detect(animals, pattern1) # TRUE  TRUE  TRUE FALSE


pattern2 <- "[A-Z]$"
str_detect(animals, pattern2) # FALSE FALSE FALSE  TRUE


pattern3 <- "[a-z]{4,5}"
str_detect(animals, pattern3) # FALSE  TRUE  TRUE FALSE

