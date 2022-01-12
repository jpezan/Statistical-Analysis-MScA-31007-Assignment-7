# Assignment 7
dataPath <- "~/UChicago/31007_Stats_Lec/Assignment7/"

# SECTION 1.1 - READING THE DATA
test_dat <- read.table(paste(dataPath,'Week7_Test_Sample.csv',sep = '/'), header=TRUE)
head(test_dat)

# SECTION 1.2 - Fit linear models using: no inputs, only Input1, only Input2, both Input1 and Input2.
fit.1<-lm(Output~1,data=test_dat) #output y
fit.1.2<-lm(Output~1+Input1,data=test_dat) #first predictor values 
fit.1.3<-lm(Output~1+Input2,data=test_dat) #second predictor values
fit.1.2.3<-lm(Output~.,data=test_dat)

# SECTION 2.1 - OUPTUTS OF ANOVA()
anova(fit.1.2)$"Sum Sq" #= 376.1526 177.6054  
anova(fit.1.2)$"Pr(>F)"[1] #= 4.619545e-125

anova(fit.1.3)$"Sum Sq" #= 1.73732 552.02067

c(anova(fit.1,fit.1.2.3)$F[2],summary(fit.1.2.3)$fstatistic[1]) #= 526.301

anova(fit.1.2.3)$"Pr(>F)"[1] #= 8.165178e-125


