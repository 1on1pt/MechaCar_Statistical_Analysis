# MechaCar_Statistical_Analysis
Using R and RStudio to create statistics and hypothesis testing to analyze a series of datasets from the automotive industry. The analysis will include visualizations, statistical tests, and interpretation of the results. All of your statistical analysis and visualizations will be written in the R programming language.

## Overview of the Analysis
![Robots-Auto-Assembly-Plant](https://user-images.githubusercontent.com/94148420/161385529-6336209c-c61f-4472-a030-892ee2134340.jpg)


Jeremy is ecstatic that he has been given the opportunity to lead the data analytics team. He's confident that his 10 years working with the manufacturing and research team has provided him with sufficient expertise in the *subject matter*.  A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the **MechaCar**, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

For success in this special project, Jeremy and his data analytics team is tasked with:
* Performing a multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collecting summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Running t-tests to determine if the manufacturing lots are statistically different from the mean population
* Designing a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers and each statistical analysis, writing a summary interpretation of the findings.


### Resources
**Code:**
* MechaCarChallenge.R

**Data:**
* MechaCar_mpg.csv
* Suspension_Coil.csv

**Software/Data Tools:**
* dplyr
* R
* RStudio

## Results
### Linear Regression to Predict MPG
The mech_car_mpg.csv dataset was used to to create linear regression to predict MPG.  The dataset includes the following six variables:
* vehicle_length
* vehicle_weight
* spoiler_angle
* ground_clearance
* AWD
* mpg

The *mecha_car_mpg* dataframe was created from the *mech_car_mpg.csv* dataset.  Here is an image of head(mecha_car_mpg):
![mecha_car_mpg_df_head](https://user-images.githubusercontent.com/94148420/161386435-e3c5d52d-5d11-4c2e-87c7-82142e6dbc33.PNG)

Next, performing a linear regression using the lm() function was completed.
![lm_mpg](https://user-images.githubusercontent.com/94148420/161386692-3d0d8b0b-5bcd-4e76-9b93-c0f235b4fb87.PNG)

The summary() function is applied to determine the p-value and r-squared value for the linear regression model.
![summary_lm](https://user-images.githubusercontent.com/94148420/161386800-bf90a92a-f1bc-4e4e-9b7d-364d00847dcf.PNG)

The following further dives into a deeper understanding of the data.

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Based on the summary output (Pr(>|t|)), there are two variables/coefficients that provide a non-random amount of variance to the mpg values:
1. vehicle_length, p-value = 2.60e-12

### Is the slope of the linear model considered to be zero? Why or why not?


### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?




## Summary


