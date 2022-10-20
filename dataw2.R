library(dplyr)
 library(readr)
 marketing_campaign_1_ <- read_delim("C:/Users/Admin/Downloads/marketing_campaign (1).csv", 
                                           delim = "\t", escape_double = FALSE, 
                                           trim_ws = TRUE)
 
 
select( marketing_campaign_1_,Education,Income)  
View( marketing_campaign_1_)
marketing_campaign_1_<-data.frame(marketing_campaign)
str( marketing_campaign)
Z1=select( marketing_campaign_1_,ID,Year_Birth,Education,Marital_Status,Income,Recency)
View(Z1)
Z2=select( marketing_campaign_1_,AcceptedCmp3:AcceptedCmp2)
View(Z2)
Z3=select( marketing_campaign_1_,-AcceptedCmp3:-AcceptedCmp2)
View(Z3)


filter(marketing_campaign_1_,Income>=50000)
A=filter(marketing_campaign_1_,Income>=50000)
View(A)
B=filter(marketing_campaign_1_,Marital_Status=="Single")
View(B)
C=filter(marketing_campaign_1_,Marital_Status=="Divorced")
View(C)
D=filter(marketing_campaign_1_,Marital_Status=="Single" | Marital_Status=="Divorced")
View(D)
E=filter(marketing_campaign_1_,Kidhome==1 |Teenhome==1)
View(E)

M=mutate(marketing_campaign_1_,ratio=Income/Recency)

View(bodyPerformance)
N=mutate(bodyPerformance,ratio=height_cm/weight_kg)


P=mutate(marketing_campaign_1_,age=2022-(Year_Birth))
marketing_campaign_1_ %>% summarise(median=median(Income),variance=var(Income))
str(marketing_campaign_1_)
summary(marketing_campaign_1_)
marketing_campaign_1_ %>% summarise(median=median(Recency),variance=var(Recency))
S=arrange(marketing_campaign_1_,Income)
View(S)
T=arrange(marketing_campaign_1_,desc(Income))
View(T)