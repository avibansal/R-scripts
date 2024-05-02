#Two sample t-test
independent_t <- read_excel("D:/Advance Analytics/Advance Analytics-2024/Day-7_T-tests/T-tests/independent_t.xlsx")
attach(independent_t)
#Assumptions
#continuous
#Normality
shapiro.test(Mumbai)
shapiro.test(Delhi)

#Independent sample t test
t.test(Mumbai,Delhi,mu=0)
t.test(Mumbai,Delhi,mu=0,var.equal = T)

#Check variance 
var(Mumbai)
var(Delhi)
library(car)
leveneTest(Mumbai,Delhi,mu=0)
