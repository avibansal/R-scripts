#Multiple linear regression
MR1 <- read_excel("Day-9_Correlation_Simple and Multiple Regression _Stepwise Regression/Regression_Simple and Multiple/Multiple Regression/MR1.xlsx")
attach(MR1)
str(MR1)

Model=lm(Buying~Attitude+Perception+Awarness+Cost+Rating,data = MR1)
#Model=lm(Buying~.) will aslo work don't need to write all independent variables
summary(Model)
anova(Model)
plot(Model)
par(mfrow=c(2,2))
plot(Model)

#For multicollinearity
library(car)
VIF=vif(Model)
#No vif value is more than 10 hence we don't have MULTICOLLINEARITY 
#VIF->VARIANCE INFLATION FACTOR
#VIF<10 No MULTICOLLINEARITY 
T=1/VIF
#T>0.2 No MULTICOLLINEARITY

#PREDICTIVE MODEL
summary(Model)
#Cost and Rating don't have any impact according to data
Model1=lm(Buying~Awarness+Attitude+Perception,data=MR1)
summary(Model1)
#Rsq 0.8624 which is very close to previous case
#y=0.466(Awarness)+0.379(Attitude)+0.197(Percep.)+0.505(intercept)