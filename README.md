## Overview
Collecting summary statistics on the pounds per square inch (PSI) of the suspension coils from manufacturing lots. Using R to perform multiple linear regression analysis on the dataset and using t-tests to determine variability in individual lots versus the mean population. 
## Results
### Linear Regression to Predict MPG
![Deliverable 1](https://github.com/pojones/mechacar_statistical_analysis/blob/24d1b8e7227d397cf1b476612d07fba88e395ef6/deliverable1.png)
<br/>
- Our p-values [Pr(>|t|) column values] for vehicle length and ground clearance are near-zero, indicating they are statistically likely to provide non-random amounts of variance to the model. That is, the data indicate that vehicle length and ground clearance have a significant impact on MechaCar's fuel mileage. Conversely, the variables for vehicle weight, spoiler, angle, and AWD would indicate more randomness in the data set.
- Since our R-squared value is reasonably high, we are lead to believe the variables linearly correlated. It is unlikely that the model's slope is zero. 
- Since the data's p-value is near-zero (5.35e-11) and the R-squared value is reasonably high, this model seems reasonably effective for predicting MechaCar fuel mileage. 
<br/>   
### Summary Statistics on Suspension Coils
![Deliverable 2.1](https://github.com/pojones/mechacar_statistical_analysis/blob/24d1b8e7227d397cf1b476612d07fba88e395ef6/deliverable2.1.png)
<br/>
Since design specifications require a <100 variance in PSI, the full production run effectively passed the inspection. But the variance is still worth further inspection.
![Deliverable 2.2](https://github.com/pojones/mechacar_statistical_analysis/blob/24d1b8e7227d397cf1b476612d07fba88e395ef6/deliverable2.2.png)
<br/>
Further inspection reveals that the majority of the variance comes from lot three, which does not meet specification criteria. This lot will need to be reviewed.
<br/>
### Suspension Coil Data T-Tests
![Deliverable 3.1](https://github.com/pojones/mechacar_statistical_analysis/blob/24d1b8e7227d397cf1b476612d07fba88e395ef6/deliverable3.1.png)
<br/>
The t-test performed on the full run shows a true mean congruent with the results above. Also observe the p-value of 0.06. This is not sufficient evidence to reject the null, meaning that there is not sufficient evidence to indicate that the production run is inadequate.
<br/>
![Deliverable 3.2](https://github.com/pojones/mechacar_statistical_analysis/blob/24d1b8e7227d397cf1b476612d07fba88e395ef6/deliverable3.2.png)
<br/>
However, when we examine each lot individually, we see that lot three deviates from lots one and two. The first two lots are within tolerance, but the third lot's p-value is beyond our significance level (0.04 < a=0.05). For this lot, there is sufficient evidence to indicate the production run is inadequate.
<br/>
## Study Design: MechaCar vs Competition
A quick and effective study to compare MechaCar to the competition would like involve some other variables beyond fuel efficiency. These might include acceleration rate, comfortability, safety rating, cost, or drag coefficient.  Regardless of what metrics are used, a reasonable null hypothesis would be that because of MechaCar's new and innovative technology, it should be able to outperform other comparable vehicles in nearly every area. A good strategy to perform such an analysis would include a Shapiro-Wilks test on the metrics in question. For a final analysis, an ANOVA test to do a well-calibrated comparison and multiple regression tests would likely yield some other useful information.
