#Simple_Regressions
Simple_Regressions <- read_excel("Day-9_Correlation_Simple and Multiple Regression _Stepwise Regression/Regression_Simple and Multiple/Simple Regression/Simple-Regressions.xlsx")
attach(Simple_Regressions)
str(Simple_Regressions)
#num hence continuous

#Normality-> residual should be normally distributed
shapiro.test(Compensation)
shapiro.test(Performance)

#Outliers
boxplot(Compensation)
boxplot(Performance)

#Linearity
plot(Compensation,Performance)

#Simple Linear Regression
Model=lm(Performance~Compensation,data=Simple_Regressions)
summary(Model)
#Adjusted R-squared is always < R-squared
anova(Model) #to find the best fitted line
cor(Compensation,Performance)

#The simple regression eq from Model1
#y=(compensation)x + (interception)
#y=0.3582x+12.9382 
#Got it from model summary

Model$residuals
shapiro.test(Model$residuals)

abline(Model)
plot(Model)
par(mfrow=c(2,2))
plot(Model)

