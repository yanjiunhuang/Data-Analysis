library(readxl)
dir("data")
DF <- read_excel("data/GroupAssignmentData.xls")
readxl::excel_sheets("data/GroupAssignmentData.xls")
Metadata <-read_excel("data/GroupAssignmentData.xls",sheet = "Metadata")
DF$Field_Mgmt <- as.numeric(factor(DF$Field_Mgmt))

M1 <- lm(aphid_live~Field_Mgmt+Pt.seminatural+Date+Treatment_ID+I(Field_Mgmt*Date),
         data=DF)
summary(M1)
anova(M1)
AIC(M1)
