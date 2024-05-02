#One sample t-test
Indian_oil_ethanol <- read_excel("D:/Advance Analytics/Advance Analytics-2024/Day-7_T-tests/T-tests/One Sample t-test/Indian oil_ethanol.xlsx")
attach(Indian_oil_ethanol)
#Assumptions
#Continuous
#Normality Test : shapiro,Lillie,Andrrson

#One sample t-test
t.test(`Mileage with ethanol`,mu=12)
t.test(`Mileage with ethanol`,mu=12,alternative = c("two.sided"),conf.level=0.95)
t.test(`Mileage with ethanol`,mu=12,alternative = c("greater"),conf.level=0.95)
#MU-> TEST VALUE