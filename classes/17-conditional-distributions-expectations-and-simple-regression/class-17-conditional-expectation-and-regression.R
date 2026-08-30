# ECO 202, Class 17
# Conditional expectations and simple regression.
# Open the Class 17 folder as the working folder before running this script.

# Read the historical wage data from the class-local data folder.
wage_data <- read.csv("data/wage1.csv")

# Display the first six wage and education records.
head(wage_data[c("wage", "educ")])

# Count rows with missing wage or education information.
missing_required <- sum(is.na(wage_data$wage) | is.na(wage_data$educ))

# Print the missing-value check.
cat("Rows missing wage or education:", missing_required, "\n")

# Keep rows with observed wage and education.
complete_rows <- !is.na(wage_data$wage) & !is.na(wage_data$educ)

# Keep complete hourly wage observations.
wage <- wage_data$wage[complete_rows]

# Keep complete years-of-education observations.
education <- wage_data$educ[complete_rows]

# Count complete observations.
number_observations <- length(wage)

# Mark observations with 11 or fewer years of education.
group_11_or_less <- education <= 11

# Mark observations with exactly 12 years of education.
group_12 <- education == 12

# Mark observations with 13 through 15 years of education.
group_13_to_15 <- education >= 13 & education <= 15

# Mark observations with 16 or more years of education.
group_16_or_more <- education >= 16

# Count observations in the first education group.
count_11_or_less <- sum(group_11_or_less)

# Count observations in the second education group.
count_12 <- sum(group_12)

# Count observations in the third education group.
count_13_to_15 <- sum(group_13_to_15)

# Count observations in the fourth education group.
count_16_or_more <- sum(group_16_or_more)

# Calculate mean wage in the first education group.
mean_11_or_less <- mean(wage[group_11_or_less])

# Calculate mean wage in the second education group.
mean_12 <- mean(wage[group_12])

# Calculate mean wage in the third education group.
mean_13_to_15 <- mean(wage[group_13_to_15])

# Calculate mean wage in the fourth education group.
mean_16_or_more <- mean(wage[group_16_or_more])

# Store the four group counts for printing and plotting.
group_counts <- c(count_11_or_less, count_12, count_13_to_15, count_16_or_more)

# Store the four group means for printing and plotting.
group_means <- c(mean_11_or_less, mean_12, mean_13_to_15, mean_16_or_more)

# Calculate the overall sample mean wage directly.
overall_mean_wage <- mean(wage)

# Reconstruct the overall mean by weighting the four conditional means.
weighted_group_mean <- sum(group_counts * group_means) / number_observations

# Print the group counts and conditional mean wages.
cat("Education-group counts:", group_counts, "\n")

# Print the four conditional mean wages.
cat("Education-group means:", group_means, "\n")

# Print the direct and iterated-mean calculations.
cat("Overall mean:", overall_mean_wage, " Weighted group mean:", weighted_group_mean, "\n")

# Calculate the sample mean of education.
mean_education <- mean(education)

# Calculate deviations of education from its sample mean.
education_deviations <- education - mean_education

# Calculate deviations of wage from its sample mean.
wage_deviations <- wage - overall_mean_wage

# Calculate the education sum of squares.
education_sum_squares <- sum(education_deviations^2)

# Calculate the fitted simple-regression slope.
slope <- sum(education_deviations * wage_deviations) / education_sum_squares

# Calculate the fitted simple-regression intercept.
intercept <- overall_mean_wage - slope * mean_education

# Calculate the fitted wage for each observation.
fitted_wage <- intercept + slope * education

# Calculate each regression residual.
residual <- wage - fitted_wage

# Calculate the HC1 correction factor for two fitted coefficients.
hc1_correction <- number_observations / (number_observations - 2)

# Calculate the HC1 robust variance of the fitted slope.
hc1_slope_variance <- hc1_correction * sum(education_deviations^2 * residual^2) / education_sum_squares^2

# Calculate the HC1 robust standard error of the fitted slope.
hc1_slope_standard_error <- sqrt(hc1_slope_variance)

# Calculate the large-sample standardized statistic for a zero slope.
slope_z_statistic <- slope / hc1_slope_standard_error

# Calculate the two-sided standard Normal p-value.
slope_p_value <- 2 * pnorm(-abs(slope_z_statistic))

# Calculate the lower endpoint of the approximate 95 percent slope interval.
slope_lower <- slope - 1.96 * hc1_slope_standard_error

# Calculate the upper endpoint of the approximate 95 percent slope interval.
slope_upper <- slope + 1.96 * hc1_slope_standard_error

# Print the fitted intercept and slope.
cat("Intercept:", intercept, " Slope:", slope, "\n")

# Print the robust slope inference.
cat("HC1 slope SE:", hc1_slope_standard_error, " z:", slope_z_statistic, " p:", slope_p_value, " CI:", slope_lower, slope_upper, "\n")

# Open a PNG file for conditional means and regression.
png("figures/wage-conditional-means-and-regression.png", width = 1450, height = 760, res = 140)

# Arrange the grouped means and fitted line side by side.
par(mfrow = c(1, 2))

# Draw the mean wage in each broad education group.
group_bars <- barplot(group_means, names.arg = c("11 or\nless", "12", "13 to 15", "16 or\nmore"), col = "#9ecae1", ylim = c(0, 10), xlab = "Years-of-education group", ylab = "Mean wage (1976 dollars per hour)", main = "Conditional means by broad group")

# Add the numerical mean above each group bar.
text(group_bars, group_means, labels = sprintf("%.2f", group_means), pos = 3)

# Plot every wage against years of education.
plot(education, wage, pch = 16, cex = 0.55, col = "#969696", xlab = "Years of education", ylab = "Wage (1976 dollars per hour)", main = "Simple fitted regression line")

# Add the fitted simple-regression line.
abline(a = intercept, b = slope, lwd = 4, col = "#d95f0e")

# Close the PNG graphics device and save the figure.
dev.off()
