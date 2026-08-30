# ECO 202, Class 11
# Sampling distributions under repeated uniform selection from the wage1 rows.
# Open the Class 11 folder as the working folder before running this script.

# Read the historical wage data from the data subfolder.
wage1 <- read.csv("data/wage1.csv")

# Verify that the fixed teaching population contains 526 rows and 24 variables.
stopifnot(nrow(wage1) == 526 & ncol(wage1) == 24)

# Verify that recorded wage has no missing values in these rows.
stopifnot(sum(is.na(wage1$wage)) == 0)

# Store recorded hourly wage in 1976 dollars per hour.
wage <- wage1$wage

# Count the rows in the fixed teaching population.
number_rows <- length(wage)

# Calculate the fixed-population mean wage.
population_mean_wage <- mean(wage)

# Calculate the fixed-population wage variance with divisor 526.
population_variance_wage <- mean((wage - population_mean_wage)^2)

# Calculate the fixed-population wage standard deviation.
population_sd_wage <- sqrt(population_variance_wage)

# Create the indicator for recorded wage of at least 6 dollars per hour.
high_wage <- as.numeric(wage >= 6)

# Calculate the fixed-population proportion with recorded wage of at least 6 dollars.
population_high_wage_proportion <- mean(high_wage)

# Calculate the fixed-population variance of the zero-one indicator.
population_variance_high_wage <- population_high_wage_proportion * (1 - population_high_wage_proportion)

# Store the three sample sizes used in the class demonstration.
sample_sizes <- c(25, 100, 400)

# Calculate the exact sampling-distribution standard deviations for the sample means.
analytic_se_mean <- population_sd_wage / sqrt(sample_sizes)

# Calculate the exact sampling-distribution standard deviations for the sample proportions.
analytic_se_proportion <- sqrt(population_variance_high_wage / sample_sizes)

# Set a seed so the one sample and all repeated-sampling results are reproducible.
set.seed(202611)

# Draw one sample of 25 row numbers independently with replacement.
one_sample_rows <- sample(1:number_rows, size = 25, replace = TRUE)

# Extract the 25 recorded wages in that one sample.
one_sample_wage <- wage[one_sample_rows]

# Calculate the realized mean in that one sample.
one_sample_mean <- mean(one_sample_wage)

# Calculate the realized count with wage of at least 6 dollars in that one sample.
one_sample_count <- sum(one_sample_wage >= 6)

# Calculate the realized proportion with wage of at least 6 dollars in that one sample.
one_sample_proportion <- mean(one_sample_wage >= 6)

# Count the distinct fixed-file rows represented in the one sample.
one_sample_distinct_rows <- length(unique(one_sample_rows))

# Choose the number of repeated samples for each simulated sampling distribution.
number_repetitions <- 10000

# Create empty vectors for the 10,000 sample means and proportions when n equals 25.
sample_mean_25 <- numeric(number_repetitions)

# Create an empty vector for the 10,000 sample proportions when n equals 25.
sample_proportion_25 <- numeric(number_repetitions)

# Repeat the with-replacement sample of size 25.
for (repetition in 1:number_repetitions) {
  # Draw 25 fixed-file rows independently with replacement.
  repeated_rows_25 <- sample(1:number_rows, size = 25, replace = TRUE)

  # Store the mean recorded wage for this sample of size 25.
  sample_mean_25[repetition] <- mean(wage[repeated_rows_25])

  # Store the proportion with recorded wage of at least 6 dollars for this sample.
  sample_proportion_25[repetition] <- mean(wage[repeated_rows_25] >= 6)

  # End this size-25 repetition.
}

# Create empty vectors for the 10,000 sample means and proportions when n equals 100.
sample_mean_100 <- numeric(number_repetitions)

# Create an empty vector for the 10,000 sample proportions when n equals 100.
sample_proportion_100 <- numeric(number_repetitions)

# Repeat the with-replacement sample of size 100.
for (repetition in 1:number_repetitions) {
  # Draw 100 fixed-file rows independently with replacement.
  repeated_rows_100 <- sample(1:number_rows, size = 100, replace = TRUE)

  # Store the mean recorded wage for this sample of size 100.
  sample_mean_100[repetition] <- mean(wage[repeated_rows_100])

  # Store the proportion with recorded wage of at least 6 dollars for this sample.
  sample_proportion_100[repetition] <- mean(wage[repeated_rows_100] >= 6)

  # End this size-100 repetition.
}

# Create empty vectors for the 10,000 sample means and proportions when n equals 400.
sample_mean_400 <- numeric(number_repetitions)

# Create an empty vector for the 10,000 sample proportions when n equals 400.
sample_proportion_400 <- numeric(number_repetitions)

# Repeat the with-replacement sample of size 400.
for (repetition in 1:number_repetitions) {
  # Draw 400 fixed-file rows independently with replacement.
  repeated_rows_400 <- sample(1:number_rows, size = 400, replace = TRUE)

  # Store the mean recorded wage for this sample of size 400.
  sample_mean_400[repetition] <- mean(wage[repeated_rows_400])

  # Store the proportion with recorded wage of at least 6 dollars for this sample.
  sample_proportion_400[repetition] <- mean(wage[repeated_rows_400] >= 6)

  # End this size-400 repetition.
}

# Combine the simulated centers for the three sample-mean distributions.
simulated_mean_centers <- c(mean(sample_mean_25), mean(sample_mean_100), mean(sample_mean_400))

# Combine the simulated standard deviations for the three sample-mean distributions.
simulated_mean_se <- c(sd(sample_mean_25), sd(sample_mean_100), sd(sample_mean_400))

# Combine the simulated centers for the three sample-proportion distributions.
simulated_proportion_centers <- c(mean(sample_proportion_25), mean(sample_proportion_100), mean(sample_proportion_400))

# Combine the simulated standard deviations for the three sample-proportion distributions.
simulated_proportion_se <- c(sd(sample_proportion_25), sd(sample_proportion_100), sd(sample_proportion_400))

# Display the fixed-population quantities that determine the analytic benchmarks.
cat("Rows:", number_rows, " Mean wage:", population_mean_wage, " SD wage:", population_sd_wage, "\n")

# Display the fixed-population threshold count and proportion.
cat("Rows with wage at least 6:", sum(high_wage), " Proportion:", population_high_wage_proportion, "\n")

# Display the three exact sample-mean standard errors.
print(data.frame(sample_size = sample_sizes, analytic_mean_center = population_mean_wage, analytic_mean_se = analytic_se_mean))

# Display the three exact sample-proportion standard errors.
print(data.frame(sample_size = sample_sizes, analytic_proportion_center = population_high_wage_proportion, analytic_proportion_se = analytic_se_proportion))

# Display the row numbers in the one realized sample of size 25.
print(one_sample_rows)

# Display the first ten recorded wages in the one realized sample.
print(one_sample_wage[1:10])

# Display the statistics from the one realized sample.
cat("One n=25 sample mean:", one_sample_mean, " Count:", one_sample_count, " Proportion:", one_sample_proportion, " Distinct rows:", one_sample_distinct_rows, "\n")

# Display the simulated centers and standard deviations for the sample means.
print(data.frame(sample_size = sample_sizes, simulated_mean_center = simulated_mean_centers, simulated_mean_se = simulated_mean_se))

# Display the simulated centers and standard deviations for the sample proportions.
print(data.frame(sample_size = sample_sizes, simulated_proportion_center = simulated_proportion_centers, simulated_proportion_se = simulated_proportion_se))

# Choose common histogram breaks for all three sample-mean panels.
mean_breaks <- seq(2, 10, by = 0.1)

# Choose common histogram breaks for all three sample-proportion panels.
proportion_breaks <- seq(0, 1, by = 0.02)

# Open a PNG file for the six simulated sampling distributions.
png("figures/wage-sampling-distributions.png", width = 1500, height = 950, res = 150)

# Arrange the sample-mean panels above the sample-proportion panels.
par(mfrow = c(2, 3), mar = c(4.5, 4.5, 3, 1), oma = c(0, 0, 2, 0))

# Draw the simulated sampling distribution of the sample mean for n equal to 25.
hist(sample_mean_25, breaks = mean_breaks, freq = FALSE, xlim = c(2, 10), col = "gray85", border = "steelblue4", main = "Sample mean, n = 25", xlab = "Mean wage (1976 dollars per hour)")

# Mark the exact center and one analytic standard error for n equal to 25.
abline(v = population_mean_wage, col = "firebrick3", lwd = 3)

# Mark one analytic standard error on either side of the exact center for n equal to 25.
abline(v = population_mean_wage + c(-1, 1) * analytic_se_mean[1], col = "darkgreen", lwd = 2, lty = 2)

# Draw the simulated sampling distribution of the sample mean for n equal to 100.
hist(sample_mean_100, breaks = mean_breaks, freq = FALSE, xlim = c(2, 10), col = "gray85", border = "steelblue4", main = "Sample mean, n = 100", xlab = "Mean wage (1976 dollars per hour)")

# Mark the exact center and one analytic standard error for n equal to 100.
abline(v = population_mean_wage, col = "firebrick3", lwd = 3)

# Mark one analytic standard error on either side of the exact center for n equal to 100.
abline(v = population_mean_wage + c(-1, 1) * analytic_se_mean[2], col = "darkgreen", lwd = 2, lty = 2)

# Draw the simulated sampling distribution of the sample mean for n equal to 400.
hist(sample_mean_400, breaks = mean_breaks, freq = FALSE, xlim = c(2, 10), col = "gray85", border = "steelblue4", main = "Sample mean, n = 400", xlab = "Mean wage (1976 dollars per hour)")

# Mark the exact center and one analytic standard error for n equal to 400.
abline(v = population_mean_wage, col = "firebrick3", lwd = 3)

# Mark one analytic standard error on either side of the exact center for n equal to 400.
abline(v = population_mean_wage + c(-1, 1) * analytic_se_mean[3], col = "darkgreen", lwd = 2, lty = 2)

# Draw the simulated sampling distribution of the sample proportion for n equal to 25.
hist(sample_proportion_25, breaks = proportion_breaks, freq = FALSE, xlim = c(0, 1), col = "gray85", border = "steelblue4", main = "Sample proportion, n = 25", xlab = "Proportion with wage at least 6")

# Mark the exact center and one analytic standard error for n equal to 25.
abline(v = population_high_wage_proportion, col = "firebrick3", lwd = 3)

# Mark one analytic standard error on either side of the exact center for n equal to 25.
abline(v = population_high_wage_proportion + c(-1, 1) * analytic_se_proportion[1], col = "darkgreen", lwd = 2, lty = 2)

# Draw the simulated sampling distribution of the sample proportion for n equal to 100.
hist(sample_proportion_100, breaks = proportion_breaks, freq = FALSE, xlim = c(0, 1), col = "gray85", border = "steelblue4", main = "Sample proportion, n = 100", xlab = "Proportion with wage at least 6")

# Mark the exact center and one analytic standard error for n equal to 100.
abline(v = population_high_wage_proportion, col = "firebrick3", lwd = 3)

# Mark one analytic standard error on either side of the exact center for n equal to 100.
abline(v = population_high_wage_proportion + c(-1, 1) * analytic_se_proportion[2], col = "darkgreen", lwd = 2, lty = 2)

# Draw the simulated sampling distribution of the sample proportion for n equal to 400.
hist(sample_proportion_400, breaks = proportion_breaks, freq = FALSE, xlim = c(0, 1), col = "gray85", border = "steelblue4", main = "Sample proportion, n = 400", xlab = "Proportion with wage at least 6")

# Mark the exact center and one analytic standard error for n equal to 400.
abline(v = population_high_wage_proportion, col = "firebrick3", lwd = 3)

# Mark one analytic standard error on either side of the exact center for n equal to 400.
abline(v = population_high_wage_proportion + c(-1, 1) * analytic_se_proportion[3], col = "darkgreen", lwd = 2, lty = 2)

# Add a shared explanation of the analytic reference lines.
mtext("Red: exact center; green dashed: one analytic standard error from the center", outer = TRUE, cex = 1.1)

# Close the PNG file.
dev.off()
