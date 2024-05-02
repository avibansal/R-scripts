#Cluster Analysis
Case_1_Godrej_Ltd <- read_excel("D:/Advance Analytics/Advance Analytics-2024/Day-11_EFA & Cluster Analysis/Cluster Analysis/Case 1_ Godrej Ltd.xlsx")
attach(Case_1_Godrej_Ltd)
#Removing first column
z=Case_1_Godrej_Ltd[,-c(1,1)]

#Standardizing the data
#2 for across column
m<-apply(z,2,mean)
s<-apply(z,2,sd)
z<-scale(z,m,s)
z
#will be between -3 to +3

distance<-dist(z)
distance
print(distance,digits = 3)

#Cluster analysis HCA 
#Dendrogram- complete linkage->largerst distance between 2 cluster
hc.c<-hclust(distance)
hc.c
plot(hc.c)
plot(hc.c,hang = -1)

#average linkage -> average between 2 cluster
hc.a<-hclust(distance,method = "average")
hc.a
plot(hc.a)

member.c<-cutree(hc.c,3)
member.a<-cutree(hc.a,3)
table(member.c,member.a)
#simple linkage -> shortest distance

aggregate(z,list(member.c),mean)

aggregate(Case_1_Godrej_Ltd[,-c(1,1)],list(member.c),mean)


#K-means clustering
library(cluster)
plot(silhouette(cutree(hc.c,3),distance))
kc<-kmeans(z,3)
kc$cluster
