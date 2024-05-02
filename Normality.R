#One sample t-test
Indian_oil_ethanol <- read_excel("D:/Advance Analytics/Advance Analytics-2024/Day-7_T-tests/T-tests/One Sample t-test/Indian oil_ethanol.xlsx")
attach(Indian_oil_ethanol)
#Assumptions:
#1. Continuous -> which can be expressed in decimal format
#2. Normality -> similar number of observations to the both sides of mean
#TEST FOR CONTINUOUS

#NORMALITY TEST
#first method 
hist(`Mileage with ethanol`)
library(moments)
#2nd method
skewness(`Mileage with ethanol`)
#3rd test
kurtosis(`Mileage with ethanol`)

#fourth method
shapiro.test(`Mileage with ethanol`)
#w-> wills value used to find p
#fifth method
library(nortest)
lillie.test(`Mileage with ethanol`)
#sixth method
ad.test(`Mileage with ethanol`)