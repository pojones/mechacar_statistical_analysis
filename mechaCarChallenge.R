library(dplyr)

# read in mechacar csv as dataframe
mechaCar <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)

# generate linear regression model and summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mechaCar))

#############################################################

# read in suspension csv as a dataframe
suspensionCoil <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors=F)

# create summaries for total production units and lot units
total_summary <- suspensionCoil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI))
lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI), .groups="keep")

#############################################################

# t-tests on PSI measurements across all lots
t.test((suspensionCoil$PSI), mu=1500)

# t-tests for each individual lot
lot1 <- subset(suspensionCoil, Manufacturing_Lot == "Lot1")
lot2 <- subset(suspensionCoil, Manufacturing_Lot == "Lot2")
lot3 <- subset(suspensionCoil, Manufacturing_Lot == "Lot3")
t.test((lot1$PSI),mu=1500)
t.test((lot2$PSI),mu=1500)
t.test((lot3$PSI),mu=1500)
