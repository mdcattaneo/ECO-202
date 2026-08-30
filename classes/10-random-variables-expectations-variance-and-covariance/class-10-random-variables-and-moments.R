# ECO 202, Class 10
# Random variables and moments under uniform selection from the wage1 rows.
# Open the Class 10 folder as the working folder before running this script.

# Read the historical wage data from the data subfolder.
wage1 <- read.csv("data/wage1.csv")

# Verify that the fixed teaching population contains 526 rows.
stopifnot(nrow(wage1) == 526)

# Verify that wage and education have no missing values in these rows.
stopifnot(sum(is.na(wage1$wage)) == 0 & sum(is.na(wage1$educ)) == 0)

# Store recorded hourly wage in 1976 dollars per hour.
wage <- wage1$wage

# Store completed education in years.
education <- wage1$educ

# Count the rows in the fixed teaching population.
number_rows <- length(wage)

# Assign the same probability to every row.
row_probability <- 1 / number_rows

# Calculate the expected wage under uniform row selection.
expected_wage <- sum(row_probability * wage)

# Calculate fixed-population wage variance with divisor 526.
population_variance_wage <- sum(row_probability * (wage - expected_wage)^2)

# Calculate fixed-population wage standard deviation.
population_sd_wage <- sqrt(population_variance_wage)

# Create the indicator for a recorded wage of at least 6 dollars per hour.
high_wage_indicator <- as.numeric(wage >= 6)

# Count the rows for which the indicator equals one.
number_high_wage <- sum(high_wage_indicator)

# Count the rows with recorded wage exactly equal to 6.
number_at_threshold <- sum(wage == 6)

# Count the rows with recorded wage strictly below 6.
number_below_threshold <- sum(wage < 6)

# Count the rows with recorded wage strictly above 6.
number_above_threshold <- sum(wage > 6)

# Calculate the expectation of the indicator.
expected_high_wage_indicator <- sum(row_probability * high_wage_indicator)

# Calculate the left limit F(6 minus), which is the probability that W is below 6.
cdf_left_of_threshold <- number_below_threshold / number_rows

# Calculate F(6), which is the probability that W is at most 6.
cdf_at_threshold <- sum(wage <= 6) / number_rows

# Calculate one minus F(6), which is the probability that W exceeds 6.
probability_above_threshold <- number_above_threshold / number_rows

# Calculate expected education under uniform row selection.
expected_education <- sum(row_probability * education)

# Calculate fixed-population education variance with divisor 526.
population_variance_education <- sum(row_probability * (education - expected_education)^2)

# Calculate fixed-population education standard deviation.
population_sd_education <- sqrt(population_variance_education)

# Calculate fixed-population covariance between wage and education.
population_covariance <- sum(row_probability * (wage - expected_wage) * (education - expected_education))

# Calculate correlation by standardizing the covariance.
population_correlation <- population_covariance / (population_sd_wage * population_sd_education)

# Calculate correlation with R's correlation command as a check.
r_correlation <- cor(wage, education)

# Calculate R's default variance, which uses divisor 525 for these rows.
r_default_variance <- var(wage)

# Convert R's default variance back to the divisor-526 fixed-population variance.
converted_population_variance <- r_default_variance * (number_rows - 1) / number_rows

# Print the number of rows and each row's probability.
cat("Rows:", number_rows, " Probability per row:", row_probability, "\n")

# Print the fixed-population wage moments.
cat("Expected wage:", expected_wage, " Var(W):", population_variance_wage, " SD(W):", population_sd_wage, "\n")

# Print the indicator count and expectation.
cat("Rows with wage at least 6:", number_high_wage, " Expected indicator:", expected_high_wage_indicator, "\n")

# Print the threshold atom and the two different CDF complements.
cat("Rows below 6:", number_below_threshold, " Rows at 6:", number_at_threshold, " Rows above 6:", number_above_threshold, " F(6-):", cdf_left_of_threshold, " F(6):", cdf_at_threshold, " 1-F(6):", probability_above_threshold, "\n")

# Print the fixed-population education moments.
cat("Expected education:", expected_education, " Var(Q):", population_variance_education, " SD(Q):", population_sd_education, "\n")

# Print covariance and the two correlation calculations.
cat("Cov(W,Q):", population_covariance, " Corr(W,Q):", population_correlation, " R cor check:", r_correlation, "\n")

# Print the divisor check for the wage variance.
cat("R var with divisor 525:", r_default_variance, " Converted divisor-526 variance:", converted_population_variance, "\n")

# Sort the wages to construct the fixed-file CDF.
sorted_wage <- sort(wage)

# Assign cumulative probability to each sorted wage.
cumulative_probability <- (1:number_rows) / number_rows

# Open a PNG file for the CDF figure.
png("figures/wage-uniform-row-cdf.png", width = 1000, height = 700, res = 140)

# Draw the step CDF under uniform row selection.
plot(sorted_wage, cumulative_probability, type = "s", lwd = 3, col = "steelblue", ylim = c(0, 1), main = "Recorded wage under uniform row selection", xlab = "Hourly wage (1976 dollars)", ylab = "Cumulative probability")

# Mark the 6-dollar threshold used by the indicator.
abline(v = 6, col = "firebrick", lwd = 2, lty = 2)

# Label the indicator threshold.
text(6.4, 0.15, "H = 1{W >= 6}", col = "firebrick", adj = 0)

# Close the PNG file.
dev.off()
