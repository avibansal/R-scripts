Factor_Analysis_Delta_Cars <- read_excel("D:/Advance Analytics/Advance Analytics-2024/Day-11_EFA & Cluster Analysis/EFA/Factor Analysis_Delta Cars.xlsx")
attach(Factor_Analysis_Delta_Cars)

r=cor(Factor_Analysis_Delta_Cars)
r

#SAMPLING ADEQUACY
library(psych)
KMO(Factor_Analysis_Delta_Cars)
#Sample size is adequare to run the EFA

#BAETTELLE SPHERICITY 
cortest.bartlett(Factor_Analysis_Delta_Cars)

#OR 
library(REdaS)
KMOS(Factor_Analysis_Delta_Cars)
bart_spher(Factor_Analysis_Delta_Cars)

#EFA
pca(r,nfactors=10,rotate=F)
#PRINCIPAL COMPONENT ANALYSIS TO FIND THE PATTERN,10 becoz we want to find the eigen values
#PC1 PC2 PC3 ......PC10 ..first table Factor loading
#SS Loading ->eigen value
#Proportion Var/Proportion Explained-> eigen value/10 -> contribution percentage
#Cumulative Var/Cumulative Proportion->Cumulative of Proportion Var
#Only Eigen value >1 will contribute
#r -> correlation coefficient
#their may be cross loading so we have use rotate but here we are working without rotate

z=pca(r,nfactors=3,method=regression,rotate="varimax",scores=T)
z
#RC1 RC2 RC3 -> Rotated 
#Total variance explained=69%(0.25+0.23+0,21)
#Communalities >0.5 -> values of RC In first table

print(z$loadings,digit=3,cutoff =0.7)

scree(Factor_Analysis_Delta_Cars)
#To check directly number of factor

fa.parallel(Factor_Analysis_Delta_Cars,fa="fa")
load=z$loadings[,1:2]
plot(load,type="n")
text(load,labels=names(Factor_Analysis_Delta_Cars))
library(psych)
loads=z$loadings
fa.diagram(loads)

