setwd("C:/Users/bjsul/Documents/NCSU/MSA/Fall/Logistic_Regression/Homework1_LR")
install.packages("MASS")
install.packages("visreg")
install.packages("brglm")
install.packages("car")
install.packages("mgcv")
install.packages("haven")


library(MASS)
library(visreg)
library(brglm)
library(car)
library(mgcv)
library(haven)


path <- system.file('insurance_t.sas7bdat')

data <- read_sas('insurance_t.sas7bdat')

#test = boxTidwell(INS ~ ACCTAGE  + DEPAMT + CHECKS + NSF + PHONE + 
#             TELLER + SAVBAL + ATMAMT + POS + POSAMT + CDBAL + IRABAL +
#             INVBAL + ILSBAL + MMBAL + MMCRED + MTGBAL + CCPURC + INCOME +
#             LORES + HMVAL + AGE + CRSCORE , data=data)


fit.gam <- gam(INS ~ s(ACCTAGE) + s(DEPAMT) + s(CHECKS) + 
                      s(TELLER) + s(SAVBAL) + s(ATMAMT) + s(POS) + s(POSAMT) + s(CDBAL) + s(IRABAL) +
                      s(INVBAL) + s(ILSBAL) + s(MMBAL) + s(MTGBAL) + s(INCOME) +
                      s(LORES) + s(HMVAL) + s(AGE) + s(CRSCORE) , data = data, family = binomial(link = 'logit'), method = 'REML')
gamsum <- summary(fit.gam)
summary(fit.gam)

gamacct <- gam(INS ~ s(ACCTAGE), data = data, family = binomial(link = 'logit'), method = 'REML')
summary(gamacct)

models = sapply(setdiff(names(data),"INS"),
                function(x) summary(gam(reformulate(x,response="INS"),
                data=data,family=binomial(link = 'logit'), method = 'REML')))


write.csv(gamsum, "C:/Users/bjsul/Desktop/continuous_assumptions.csv")

