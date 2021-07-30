library(jsonlite)
library(tidyverse)
# Deliverable 1: Linear Regression to predict MPG
#*************************************************
# Import the MechaCar dataset as a dataframe.
#---------------------------------------------
mechaCar <- read.csv("Resources/MechaCar_mpg.csv",check.names = F,stringsAsFactors = F)
head(mechaCar)
dim(mechaCar)
# Linear regression using lm()
# Generate Multiple Linear Regression
#-----------------------------------------
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar)
# Generate Summary Statistics (p value and r-squared)
#------------------------------------------
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar))
#------------------------------------------------------------------------------------------------------------
#End of Deliverable 1.
#************************************************************************************************************
# Deliverable 2: Visualization for the Trip Analysis:
#********************************************************
# Import the Suspension_Coil csv as a table
#--------------------------------------------------------
suspension_coil_table <- read.csv("Resources/Suspension_Coil.csv",check.names = F,stringsAsFactors = F)
head(suspension_coil_table)
dim(suspension_coil_table)
#------------------------------------------------------------------------------------------------------------
# Total summary
total_summary <- suspension_coil_table %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance = var(PSI),SD=sd(PSI),n=n())
# Lot summary dataframe
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median=median(PSI),Variance = var(PSI),SD=sd(PSI), .groups ="keep")
#-------------------------------------------------------------------------------------------------------------------------------------------------------
# Boxplot to show the variance.
plt <- ggplot(suspension_coil_table,aes(x=Manufacturing_Lot,y=PSI))
plt + geom_boxplot(colour = "blue")
#*****************************************************************************************
# End of Deliverable 2.
#********************************************************************************************************************************************************
# Deliverable 3: T test on Suspension Coils.
#**************************************************************
t.test(suspension_coil_table$PSI,mu=1500)
# Comparing manufacturing lot with population mean
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot1")$PSI, mu =1500)
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot2")$PSI, mu =1500)
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot3")$PSI, mu =1500)
#------------------------------------------------------------------------------------------
# End of Deliverable 3.
#***************************************************************************************************

