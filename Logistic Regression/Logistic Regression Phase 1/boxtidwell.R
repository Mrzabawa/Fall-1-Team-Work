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

car.boxTidwell($INS ~ ACCTAGE + DDABL + DEP + DEPAMT + CHECKS + NSF + PHONE + 
             TELLER + SAVBAL + ATMAMT + POS + POSAMT + CDBAL + IRABAL + LOCBAL +
             INVBAL + ILSBAL + MMBAL + MMCRED + MTGBAL + CCBAL + CCPURC + INCOME +
             LORES + HMVAL + AGE + CRSCORE , data=data)
