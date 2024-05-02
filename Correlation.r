#CORRELATION ANALYSIS
CRA <- read_excel("D:/Advance Analytics/Advance Analytics-2024/Day-9_Correlation_Simple and Multiple Regression _Stepwise Regression/Correlation Analysis/CRA.xlsx")
attach(CRA)
str(CRA)
#Assumptions
#Both the variable should be continuous

#NORMALITY
#If not normal increase data size if it wont work than choose corresponding 
#non parametric test
shapiro.test(advt)
shapiro.test(sales)

#Linearity
plot(advt,sales)
#Outlier
boxplot(advt)
boxplot(sales)

#Correlation Analysis
cor.test(advt,sales)

cor.test(advt,sales,method="pearson",conf.level = 0.99)
cor.test(advt,sales,method="spearman",conf.level = 0.99)