library(tidyverse)
#getwd()
#setwd("C:/Edx/projects")
#getwd()

s <- c("70", "5 ft", "4'11", "", ".", "Six feet")

pattern1 <- "\\d|ft"
str_view_all (s, pattern1) # Highlighted- "70", "5 ft", "4'11"

pattern2 <- "\d|ft"
str_view_all (s, pattern2) # Error: '\d' is an unrecognized escape in character string starting ""\d"

pattern3 <- "\\d\\d|ft"
str_view_all (s, pattern3) # Highlighted- 70, ft, 11

pattern4 <- "\\d|feet"
str_view_all (s, pattern4) # Highlighted- "70", "5", "4'11", "feet"
