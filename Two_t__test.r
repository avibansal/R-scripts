two_samplest_tests <- read_excel("D:/Advance Analytics/Advance Analytics-2024/Day-7_T-tests/T-tests/two samplest-tests.xlsx")
attach(two_samplest_tests)
str(two_samplest_tests)

#we have to convert character to factor because it is 2 sample t-test
two_samplest_tests$City<-as.factor(two_samplest_tests$City)
str(two_samplest_tests)

t.test(Perception~City,data = two_samplest_tests)
#Dependent~independent

library(car)
#For checking the homogenous of two sample/variance
leveneTest(Perception~City,data=two_samplest_tests)

