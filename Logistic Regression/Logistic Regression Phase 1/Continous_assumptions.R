setwd("C:/Users/bjsul/Documents/NCSU/MSA/Fall/Logistic_Regression/Homework1_LR")
install.packages("MASS")
install.packages("visreg")
install.packages("brglm")
install.packages("car")
install.packages("mgcv")
install.packages("haven")
install.packages("car")

library(MASS)
library(visreg)
library(brglm)
library(car)
library(mgcv)
library(haven)
library(car)

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
summary(fit.gam)
