###############################################################################
#                Phase 1 for Logistic Regression Homework                     #
#                Due September 6                                              #
#                Team Blue 5                                                  #
###############################################################################

# This is a comment I think

library('haven')#for read_sas()
#load data
setwd('C:/Users/samsc/Documents/Fall1HW/Data')
dataTrain <- read_sas('insurance_t.sas7bdat')
#modifies BRANCH and RES to factors for analysis
dataTrain$BRANCH <- as.factor(dataTrain$BRANCH)
dataTrain$RES <- as.factor(dataTrain$RES)
#Looks at the 5 number summary of the data
summary(dataTrain)
#binary? DDA, DIRDEP, NSF, SAV, ATM, CD, IRA, LOC, INV, ILS, MM, MTG, CC, SDB, HMOWN, MOVED, INAREA, (INS <- Target)
#NA's ACCTAGE, PHONE, POS, POSAMT, INV, INVBAL, CC, CCBAL, CCPURC, INCOME, HMOWN, LORES, HMVAL, AGE, CRSCORE

# Bullet point 1:
# Verify alpha
# Run simple logistic/test of association on all variables - pulling out the significant ones

# Bullet point 2:
# Find the binary variables
# Binary Vars: dda dirdep nsf sav atm cd loc ira ils inv mm mtg cc sdb hmown moved inarea
# ins is target

# Just 1 Binary Variables, pick your favorite
logit.model = glm(INS ~ factor(LOC), data=dataTrain, family = binomial(link="logit")) 
summary(logit.model)

# All Binary Variables
logit.model2 = glm(INS ~ factor(DDA) + factor(DIRDEP) + factor(NSF) + factor(SAV) + factor(ATM) + factor(CD)
                   + factor(LOC) + factor(IRA) +  factor(ILS) +  factor(INV) + factor(MM) + factor(MTG)
                   + factor(CC) + factor(SDB) + factor(HMOWN) + factor(MOVED) + factor(INAREA)
                   , data=dataTrain, family = binomial(link="logit")) 
summary(logit.model2)

logit.model3 = glm(INS ~ ACCTAGE +DDABAL + DEP+     DEPAMT+  CASHBK+  CHECKS+  NSFAMT+  PHONE+   TELLER+  
                   SAVBAL+  ATMAMT+  POS+     POSAMT +  CDBAL+   IRABAL+  LOCBAL+  INVBAL+  ILSBAL+  MMBAL+  
                   MMCRED+  MTGBAL+  CCBAL+  CCPURC+  INCOME+  LORES+   HMVAL+   AGE+     CRSCORE+ INS +   
                   BRANCH+  RES+    
                     factor(DDA) + factor(DIRDEP) + factor(NSF) + factor(SAV) + factor(ATM) + factor(CD)
                   + factor(LOC) + factor(IRA) +  factor(ILS) +  factor(INV) + factor(MM) + factor(MTG)
                   + factor(CC) + factor(SDB) + factor(HMOWN) + factor(MOVED) + factor(INAREA)
                   , data=dataTrain, family = binomial(link="logit")) 
summary(logit.model3)

binaryvars= c("DDA", "DIRDEP", "NSF", "SAV", "ATM", "CD", "LOC", "IRA", "ILS", "INV", 
             "MM", "MTG", "CC", "SDB", "HMOWN", "MOVED", "INAREA")

vif(dataTrain$)

namesss1 = names(dataTrain)
namez= namesss1[!(namesss1 %in% binaryvars) ]

dfff1=dataTrain[,namez]
vif(dfff1)


install.packages("faraway")
library(faraway)





# Significant: 


# Run the odds



# Create a table
# Talk about the largest one (include any additional interesting findings)





# Bullet point 3:
# Test the linearity assumptions for continuous variables (logit stuff?)
# Qq plots 
# Y = log odds (logits)
# X = predictor variable (continuous)

# Bullet point 4:
# Visual representation of missing values
# Examine multicollinearity 
# Write the report 






