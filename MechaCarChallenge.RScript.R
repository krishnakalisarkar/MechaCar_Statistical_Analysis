library(jsonlite)
library(tidyverse)
# Deliverable 1: Linear Regression to predict MPG
#*************************************************
# Import the MechaCar dataset as a dataframe.
#---------------------------------------------
mechaCar <- read_csv("MechaCar_mpg.csv")
head(mechaCar)
# Linear regression using lm()
# Generate Multiple Linear Regression
#-----------------------------------------
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar)
# Generate Summary Statistics
#------------------------------------------
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar))
#------------------------------------------------------------------------------------------------------------
#End of Deliverable 1.
#************************************************************************************************************