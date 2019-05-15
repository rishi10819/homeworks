library(tidyverse)
#getwd()
#setwd("C:/Edx/projects")
#getwd()

########################################################

converted <- problems %>% 
  str_replace("feet|foot|ft", "'") %>% 
  str_replace("inches|in|''|\"", "") %>% 
  str_replace("^([4-7])\\s*[,\\.\\s+]\\s*(\\d*)$", "\\1'\\2")

converted # "5'3"  "5'5"  "6'1"  "5'11" "5'12"

pattern <- "^[4-7]\\s*'\\s*\\d{1,2}$"
index <- str_detect(converted, pattern)
converted[!index]  # character(0)

##################################################

yes <- c("5 feet 7inches", "5 7")
no <- c("5ft 9 inches", "5 ft 9 inches")
s <- c(yes, no)


converted1 <- s %>% 
  str_replace("\\s*(feet|foot|ft)\\s*", "'") %>% 
  str_replace("\\s*(inches|in|''|\")\\s*", "") %>% 
  str_replace("^([4-7])\\s*[,\\.\\s+]\\s*(\\d*)$", "\\1'\\2")

pattern1 <- "^[4-7]\\s*'\\s*\\d{1,2}$"
str_detect(converted1, pattern1) # TRUE TRUE TRUE TRUE


converted2 <- s %>% 
  str_replace("\\s+feet|foot|ft\\s+", "'") %>% 
  str_replace("\\s+inches|in|''|\"\\s+", "") %>% 
  str_replace("^([4-7])\\s*[,\\.\\s+]\\s*(\\d*)$", "\\1'\\2")
  
pattern2 <- "^[4-7]\\s*'\\s*\\d{1,2}$"
str_detect(converted2, pattern2) # FALSE  TRUE  TRUE  TRUE


converted3 <- s %>% 
  str_replace("\\s*|feet|foot|ft", "'") %>% 
  str_replace("\\s*|inches|in|''|\"", "") %>% 
  str_replace("^([4-7])\\s*[,\\.\\s+]\\s*(\\d*)$", "\\1'\\2")

pattern3 <- "^[4-7]\\s*'\\s*\\d{1,2}$"
str_detect(converted3, pattern3) # FALSE FALSE FALSE FALSE


converted4 <- s %>% 
  str_replace_all("\\s", "") %>% 
  str_replace("\\s|feet|foot|ft", "'") %>% 
  str_replace("\\s|inches|in|''|\"", "") %>% 
  str_replace("^([4-7])\\s*[,\\.\\s+]\\s*(\\d*)$", "\\1'\\2")

pattern4 <- "^[4-7]\\s*'\\s*\\d{1,2}$"
str_detect(converted4, pattern4) # TRUE FALSE  TRUE  TRUE

############################################################