library(dplyr)

# read in mechacar csv as dataframe
mechaCar <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)

# generate linear regression model and summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mechaCar))
        