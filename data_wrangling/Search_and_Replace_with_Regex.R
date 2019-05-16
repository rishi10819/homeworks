library(tidyverse)
#getwd()
#setwd("C:/Edx/projects")
#getwd()

animals <- c("moose", "monkey", "meerkat", "mountain lion")

pattern1 <- "mo*" 
str_detect(animals, pattern1) #  TRUE TRUE TRUE TRUE

pattern2 <- "mo?" 
str_detect(animals, pattern2) # TRUE TRUE TRUE TRUE 

pattern3 <- "mo+" 
str_detect(animals, pattern3) # TRUE  TRUE FALSE  TRUE 

pattern4 <- "moo*"
str_detect(animals, pattern4) # TRUE  TRUE FALSE  TRUE  


schools <- c("U. Kentucky", "Univ New Hampshire", "Univ. of Massachusetts", "University Georgia", "U California", "California State University")
final <- c("University of Kentucky", "University of New Hampshire", "University of Massachusetts", "University of Georgia", "University of California", "California State University")


#[1] "University of  Kentucky"           
#[2] "University of  New Hampshire"      
#[3] "University of  of Massachusetts"   
#[4] "University of ersity Georgia"      
#[5] "University of  California"         
#[6] "California State University ersity"

schools %>% 
  str_replace("Univ\\.?|U\\.?", "University ") %>% 
  str_replace("^University of |^University ", "University of ")


#[1] "University of Kentucky"      "University of New Hampshire"
#[3] "University of Massachusetts" "University of Georgia"      
#[5] "University of California"    "California State University"

schools %>% 
  str_replace("^Univ\\.?\\s|^U\\.?\\s", "University ") %>% 
  str_replace("^University of |^University ", "University of ")


#[1] "UniversityKentucky"          "Univ New Hampshire"         
#[3] "Universityof Massachusetts"  "University of Georgia"      
#[5] "U California"                "California State University"

schools %>% 
  str_replace("^Univ\\.\\s|^U\\.\\s", "University") %>% 
  str_replace("^University of |^University ", "University of ")


#[1] "UniversityKentucky"          "UniversityNew Hampshire"    
#[3] "Universityof Massachusetts"  "University of Georgia"      
#[5] "UniversityCalifornia"        "California State University"

schools %>% 
  str_replace("^Univ\\.?\\s|^U\\.?\\s", "University") %>% 
  str_replace("University ", "University of ")