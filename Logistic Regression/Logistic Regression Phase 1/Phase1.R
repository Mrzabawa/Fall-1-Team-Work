###############################################################################
#                Phase 1 for Logistic Regression Homework                     #
#                Due September 6                                              #
#                Team Blue 5                                                  #
###############################################################################
library('haven')#for read_sas()
#load data
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
 
#123




