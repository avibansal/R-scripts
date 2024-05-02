Two_way_ANOVA <- read_excel("D:/Advance Analytics/Advance Analytics-2024/Day-8_ANOVAs/Two Way ANOVA/Two_way_ANOVA.xlsx")
attach(Two_way_ANOVA)
str(Two_way_ANOVA)

Two_way_ANOVA$Place=as.factor(Two_way_ANOVA$Place)
Two_way_ANOVA$Education=as.factor(Two_way_ANOVA$Education)
str(Two_way_ANOVA)

#Two way ANOVA8
Model=aov(Sales~Place+Education,data=Two_way_ANOVA)
summary(Model)
#effect of place and education on sales
Model1=aov(Sales~Place+Education+Place:Education,data=Two_way_ANOVA)
summary(Model1)

model.tables(Model1,"mean")
