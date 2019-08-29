
setwd('/Users/michaelzabawa/Documents/Fall\ 1\ Team\ Homework\ 5/Logistic\ Regression\ 1/Homework1_LR')
library('haven')#for read_sas()

dataTrain <- read_sas('insurance_t.sas7bdat')
#modifies BRANCH and RES to factors for analysis
dataTrain$BRANCH <- as.factor(dataTrain$BRANCH)
dataTrain$RES <- as.factor(dataTrain$RES)
#Looks at the 5 number summary of the data
summary(dataTrain)
#binary? DDA, DIRDEP, NSF, SAV, ATM, CD, IRA, LOC, INV, ILS, MM, MTG, CC, SDB, HMOWN, MOVED, INAREA, (INS <- Target)
#NA's ACCTAGE, PHONE, POS, POSAMT, INV, INVBAL, CC, CCBAL, CCPURC, INCOME, HMOWN, LORES, HMVAL, AGE, CRSCORE


