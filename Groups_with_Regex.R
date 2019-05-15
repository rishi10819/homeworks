library(tidyverse)
#getwd()
#setwd("C:/Edx/projects")
#getwd()

problems <- c("5.3", "5,5", "6 1", "5 .11", "5, 12")
pattern_with_groups1 <- "^([4-7])[,\\.](\\d*)$"

#"5'3"   "5'5"   "6 1"   "5 .11" "5, 12"
str_replace(problems, pattern_with_groups1, "\\1'\\2")



pattern_with_groups2 <- "^([4-7])[,\\.\\s](\\d*)$"

#"5'3"   "5'5"   "6'1"   "5 .11" "5, 12"
str_replace(problems, pattern_with_groups2, "\\1'\\2")
