# Use the library() function to load the dplyr package.
library(dplyr)

# Linear Regression to Predict MPG

# Import and read in the MechaCar_mpg.csv file as a dataframe.
mecha_car_mpg <- read.csv(file='./resources/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
head(mecha_car_mpg)

# Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_mpg)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_mpg))

# Suspension Coil Lot Analysis

# Download the Suspension_Coil.csv file, and place it in the active directory for your R session.
mecha_car_coil <- read.csv(file='./resources/Suspension_coil.csv',check.names = F,stringsAsFactors = F)
head(mecha_car_coil)

# Create a total_summary dataframe using the summarize() function to get the mean, median, variance,
# and standard deviation of the suspension coil’s PSI column.
total_summary <- mecha_car_coil %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI),
                                              Std_Dev_PSI=sd(PSI), .groups='keep')

# Create a lot_summary dataframe using the group_by() and the summarize() functions to group each
# manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- mecha_car_coil %>% group_by(Manufacturing_Lot) %>% summarize (Mean_PSI=mean(PSI), 
                                                                             Median_PSI=median(PSI),
                                                                             Var_PSI=var(PSI),
                                                                             Std_Dev_PSI=sd(PSI), 
                                                                             .groups='keep')

# Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is
# statistically different from the population mean of 1,500 pounds per square inch.
t.test(mecha_car_coil$PSI, mu=1500)

# Using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot
# is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(mecha_car_coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(mecha_car_coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(mecha_car_coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)


