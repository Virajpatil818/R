#Data set types 

#Type 1

Name<-c("viraj","swaraj","aniket","varad","vedant")
Age<-c(21,22,23,24,25)
ITB<-data.frame(Name,Age)
print(ITB)

#Type 2

data()
View(Orange)
help("Orange")

#Type 3(importing)

#for,csv file 
install.packages("readr")
library(readr)
detach("package:readr", unload = TRUE)
library(readr)
potato <- read_csv("C:/Users/Dell/Downloads/potato.csv", 
                   col_types = cols(area = col_number(), 
                                    method = col_integer()))
View(potato)


#for Exel file 

library(readxl)

library(readxl)
demo <- read_excel("C:/Users/Dell/Downloads/demo.xlsx", 
                   col_types = c("text", "text", "text", 
                                 "text", "text", "text", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric"))
View(demo)






