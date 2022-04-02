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

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Based on the summary output (Pr(>|t|)), there are two variables/coefficients that provide a non-random amount of variance to the mpg values:
1. vehicle_length, p-value = 2.60x10<sup>-12</sup>
2. ground_clearance, p-value = 5.21x10<sup>-08</sup>

Therefore, vehicle_length and ground_clearance have a significant impact on the mpg values.

It is also noted that the **intercept is statistically significant at 5.08x10<sup>-08</sup>**.  When an intercept is statistically significant, the intercept term explains a significant amount of variability in the dependent variable when all independent vairables are equal to zero and may mean that there are other variables that can help explain the variability of our dependent variable that have not been included in our model. 

#### Is the slope of the linear model considered to be zero? Why or why not?
The slope of this linear model cannot be considered to be zero because the p-value = 5.35x10<sup>-11</sup>.  This value is below the assumed level of significance of 0.05% and therefore the null hypothesis can be rejected and providing more evidence that the relationship between the variables and mpg is due to more than random chance.

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This linear model does predict the mpg of MechCar prototype fairly effectively as shown by the multiple r-squared value of 0.7149.  This value indicates that the predictive model is approximately accurate 71% in predicting mpg values.  Although a higher multiple r-squared value is better, 71% is not too bad.

### Summary Statistics on Suspension Coils
The mecha_car_coil dataframe was created from the Suspension_coil.csv dataset. Here is an image of head(mecha_car_coil):

![mecha_car_coil_df_head](https://user-images.githubusercontent.com/94148420/161399260-a7841714-aa57-45b3-bb9c-3d5e20665f31.PNG)

The total_summary dataframe was created using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.  Here is the resulting table:

![total_summary](https://user-images.githubusercontent.com/94148420/161399402-36554ef2-481a-45cb-964d-07abc5c4c55c.PNG)


Then the lot_summary dataframe was created using the group_by() and the summarize() functions to group each **manufacturing lot** by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.  This is the table:

![lot_summary](https://user-images.githubusercontent.com/94148420/161399497-49a3d1dd-6931-4c15-8808-270106aa3fa7.PNG)

#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
When considering all three manufacturing lots, the total **overall Var_PSI = 62.29356**, which *is within the design specifications of not exceeding 100 pounds per square inch*.  Further analysis shows that Lot 1 and Lot 2 are well within this specification:
* Lot 1 Var_PSI = 0.9795918
* Lot 2 Var_PSI = 7.4693878

But Lot 3 **far exceeds** the design specification with **Var_PSI = 170.2861224**.  This would be considered a "good catch" and further analysis of Lot 3 would be indicated.

### T-Tests on Suspension Coils
#### T-Test Results Across all Manufacturing Lots

![t_test_all_lots](https://user-images.githubusercontent.com/94148420/161400926-1b41e0cd-c9bc-48e5-95d5-6c2a126c72af.PNG)

The p-value for the **t-test for all manufacturing lots = 0.06028**.  This is **higher** than the standard 0.05 level and therefore there is not enough evidence to reject the null hypothesis and thus indicates that there is not a difference from the population mean of 1500.

#### T-Test Results for Lot 1

![t_test_lot_1](https://user-images.githubusercontent.com/94148420/161401327-4b3eee87-66a2-437f-93bd-c53d08f36253.PNG)

The p-value for the **t-test for Lot 1 = 1**.  This is **higher** than the standard 0.05 level and therefore there is not enough evidence to reject the null hypothesis and thus indicates that there is not a difference from the population mean of 1500.  The mean of Lot 1 actually is the same as the population mean of 1500.

#### T-Test Results for Lot 2

![t_test_lot_2](https://user-images.githubusercontent.com/94148420/161401343-393a742e-8c3b-41bf-888a-18f9e18afd41.PNG)

The p-value for the **t-test for Lot 2 = 0.6072**.  This is **higher** than the standard 0.05 level and therefore there is not enough evidence to reject the null hypothesis and thus indicates that there is not a difference from the population mean of 1500.

#### T-Test Results for Lot 3

![t_test_lot_3](https://user-images.githubusercontent.com/94148420/161401360-6b403092-b0f9-4389-807b-c8d2e9cf4f4a.PNG)

The p-value for the **t-test for Lot 3 = 0.04168**.  This is **lower** than the standard 0.05 level and therefore there is enough evidence to reject the null hypothesis and thus indicates that there is a difference from the population mean of 1500. Again, further analysis of Lot 3 is warranted and this lot may need to be discarded and not used for manufacturing.

### Study Design: MechaCar vs. Competition

The automobile industry is highly competitive.  According to Statistica, **SAFETY** is the number one factor when buying a car, closely followed by fuel efficiency.

![important _factors_when_buying_a_car](https://user-images.githubusercontent.com/94148420/161402165-a56d9b24-c196-45a6-bb3b-2ee6622930ad.PNG)

The US Department of Transportation National Highway Traffic Safety Administration(NHTSA) has a 5-Star Safety Ratings system to evaluate how well vehicles 
perform in crash tests.  These tests to help consumers make smart decisions about safety when purchasing a vehicle. **The NHTSA conducts frontal, side pole, side barrier, and rollover tests because they account for the majority of crashes on America’s roadways.**

#### Metrics to Test
Metrics to test would include obtaining the overall **5-Star Safety Ratings** on MechaCar and it's competitors.  Additional metrics would include individual data on frontal, side pole, side barrier, and rollover tests.

#### Hypothesis Testing
Null Hypothesis: H<sub>0</sub> = There is no difference in NHTSA 5-Star Safety Rating between MechaCar and it's competitors

Alternate Hypothesis: H<sub>a</sub> = There is a difference in NHTSA 5-Star Safety Rating between MechaCar and it's competitors

Additional hypotheses can be developed to address individual test type data.

#### Statistical Test to Test the Hypothesis

The two-sample t-test could be used for the overall 5-Star Safety Rating comparison.

The multiple linear regression could be used to evaluate and compare the overall 5-Star Rating and individual test types (frontal, side pole, side barrier, and rollover tests).

#### Data to Run the Statistical Test

Data would include the NHTSA overall 5-Star Safety Rating data and the data for the individual test types for MechaCar and it's competitors.  
