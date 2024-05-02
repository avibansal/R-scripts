#One way anova test
One_Way_Anova_CBSE <- read_excel("D:/Advance Analytics/Advance Analytics-2024/Day-8_ANOVAs/One Way ANOVA/One_Way_Anova_ CBSE.xlsx")
attach(One_Way_Anova_CBSE)
str(One_Way_Anova_CBSE)
One_Way_Anova_CBSE$Stream<-as.factor(One_Way_Anova_CBSE$Stream)
str(One_Way_Anova_CBSE)

library(car)
leveneTest(Marks~Stream,data=One_Way_Anova_CBSE)

Model<-aov(Marks~Stream,data=One_Way_Anova_CBSE)
summary(Model)

#p<0.05 null hypothesis rejected
TukeyHSD(Model)   #Used for multiple comparison 
model.tables(Model,"mean")
Model$residuals
shapiro.test(Model$residuals)

#***,**, * null hypothesis rejected
