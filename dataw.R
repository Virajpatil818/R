#Data wragling using R 

library(tidyr)

#importing data 

library(readr)
marketing_campaign_1_ <- read_delim("C:/Users/Dell/Downloads/marketing_campaign (1).csv", 
                                    delim = "\t", escape_double = FALSE, 
                                    trim_ws = TRUE)
View(marketing_campaign_1_)
marketing_campaign<-data.frame(marketing_campaign_1_)
str(marketing_campaign)

#colapsing multiple columns in 2 columns

##ex1

Y=gather(marketing_campaign,"AcceptedCmp","Value",21:25)
View(Y)

##ex2
X=gather(marketing_campaign,"NumPurchses","Value",16:19)
View(X)

#multiple col from 2 col

##ex1

A=spread(marketing_campaign,Marital_Status,Income)
View(A)

##ex2

B=spread(marketing_campaign,Education,Income)
View(B)

#seperation

##ex1

C=separate(marketing_campaign,Dt_Customer,c("day","month","year"))
View(C)



