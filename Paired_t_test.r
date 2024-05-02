#Paired t test
pair_t <- read_excel("D:/Advance Analytics/Advance Analytics-2024/Day-7_T-tests/T-tests/pair_t.xlsx")
attach(pair_t)
#Assumptions
#Normality  ->Difference should be normally distributed
shapiro.test(Diff)

#Paired t test
t.test(Bef,Aft,mu=0,paired =TRUE)
mean(Diff)
mean(Bef)-mean(Aft)
