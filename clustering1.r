Case_2_Shopping_Mall_Cluster_Analysis <- read_excel("D:/Advance Analytics/Advance Analytics-2024/Day-11_EFA & Cluster Analysis/Cluster Analysis/Case 2_Shopping Mall_Cluster Analysis.xlsx")
attach(Case_2_Shopping_Mall_Cluster_Analysis)

distance<-dist(Case_2_Shopping_Mall_Cluster_Analysis)
distance
print(distance,digits = 3)

hc.c<-hclust(distance)
hc.c
plot(hc.c)
member.c<-cutree(hc.c,2)
member.c

library(cluster)
kc=kmeans(Case_2_Shopping_Mall_Cluster_Analysis,2)
kc$cluster
aggregate(Case_2_Shopping_Mall_Cluster_Analysis,list(member.c),mean)

