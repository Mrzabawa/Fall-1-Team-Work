###############################################################################
#                Phase 1 for Logistic Regression Homework                     #
#                Due September 6                                              #
#                Team Blue 5                                                  #
###############################################################################
library('haven')#for read_sas()

dataTrain <- read_sas('insurance_t.sas7bdat')
#modifies BRANCH and RES to factors for analysis
dataTrain$BRANCH <- as.factor(dataTrain$BRANCH)
dataTrain$RES <- as.factor(dataTrain$RES)
#Looks at the 5 number summary of the data
summary(dataTrain)
#binary? DDA, DIRDEP, NSF, SAV, ATM, CD, IRA, LOC, INV, ILS, MM, MTG, CC, SDB, HMOWN, MOVED, INAREA, (INS <- Target)
#NA's ACCTAGE, PHONE, POS, POSAMT, INV, INVBAL, CC, CCBAL, CCPURC, INCOME, HMOWN, LORES, HMVAL, AGE, CRSCORE


