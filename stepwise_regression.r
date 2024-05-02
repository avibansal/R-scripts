#Stepwise Regression
MR1 <- read_excel("Day-9_Correlation_Simple and Multiple Regression _Stepwise Regression/Regression_Simple and Multiple/Multiple Regression/MR1.xlsx")
attach(MR1)
#Model considering all variable
Fitall=lm(Buying~.,data=MR1)
summary(Fitall)

Fitfirst=lm(Buying~1,data=MR1)
summary(Fitfirst)
#Stepwise Regression

#FORWARD SELECTION
step(Fitfirst,direction = "forward",scope = formula(Fitall))
#AIC -> 17.89->-492.24->590.84->-614.85->-615.43
#Work on the basis of error

#BACKWARD elemanation
step(Fitall,direction = "backward")
#AIC->-614.38->-615.43

#BI-DIRECTIONAL
step(Fitfirst,direction = "both",scope = formula(Fitall))
