# ECO 202, Class 13
# Point estimation, bias, variance, mean squared error, and standard errors.
# Open the Class 13 folder as the working folder before running this script.

# Read the historical wage data from the class-local data folder.
wage_data <- read.csv("data/wage1.csv")

# Display the first six recorded hourly wages.
head(wage_data$wage)

# Keep the recorded hourly wages as a fixed teaching population.
wage_population <- wage_data$wage[!is.na(wage_data$wage)]

# Count the wage records in the fixed teaching population.
population_size <- length(wage_population)

# Calculate the fixed-population mean wage.
population_mean <- sum(wage_population) / population_size

# Calculate deviations from the fixed-population mean.
population_deviations <- wage_population - population_mean

# Calculate the fixed-population variance using denominator N.
population_variance <- sum(population_deviations^2) / population_size

# Calculate the fixed-population standard deviation.
population_standard_deviation <- sqrt(population_variance)

# Set the sample size for the teaching experiment.
sample_size <- 25

# Calculate the true standard error under independent sampling with replacement.
true_standard_error <- population_standard_deviation / sqrt(sample_size)

# Set a seed so the one-sample estimate is reproducible.
set.seed(202613)

# Draw one sample of 25 rows independently with replacement.
one_sample <- sample(wage_population, size = sample_size, replace = TRUE)

# Calculate the realized sample-mean estimate.
one_sample_mean <- mean(one_sample)

# Calculate the realized sample standard deviation using denominator n minus 1.
one_sample_standard_deviation <- sd(one_sample)

# Estimate the standard error with the realized sample standard deviation.
estimated_standard_error <- one_sample_standard_deviation / sqrt(sample_size)

# Calculate the realized estimation error in this one sample.
realized_estimation_error <- one_sample_mean - population_mean

# Print the fixed-population target and its known spread in this teaching model.
cat("Population size:", population_size, " Mean:", population_mean, " SD:", population_standard_deviation, "\n")

# Print the true standard error under the stated row-sampling mechanism.
cat("True SE of the sample mean:", true_standard_error, "\n")

# Print the one realized estimate, estimated standard error, and realized error.
cat("One estimate:", one_sample_mean, " Estimated SE:", estimated_standard_error, " Realized error:", realized_estimation_error, "\n")

# Set the number of repeated samples for the sampling-distribution demonstration.
number_repetitions <- 10000

# Create an empty vector for the repeated sample means.
sample_means <- numeric(number_repetitions)

# Repeat the same sampling and estimation rule many times.
for (repetition in 1:number_repetitions) {
  # Draw 25 rows independently with replacement for this repetition.
  repeated_sample <- sample(wage_population, size = sample_size, replace = TRUE)
  # Calculate and store the sample mean for this repetition.
  sample_means[repetition] <- mean(repeated_sample)

  # End this repeated-sampling iteration.
}

# Calculate the simulation mean of the estimator.
simulation_mean <- mean(sample_means)

# Calculate the simulation bias relative to the fixed target.
simulation_bias <- simulation_mean - population_mean

# Calculate the simulation standard deviation of the estimator.
simulation_standard_error <- sd(sample_means)

# Calculate the simulation mean squared error of the estimator.
simulation_mse <- mean((sample_means - population_mean)^2)

# Print the repeated-sampling checks for bias, standard error, and MSE.
cat("Simulation mean:", simulation_mean, " Bias:", simulation_bias, " Simulation SE:", simulation_standard_error, " MSE:", simulation_mse, "\n")

# Open a PNG file for the sampling-distribution figure.
png("figures/sample-mean-estimation-distribution.png", width = 1200, height = 760, res = 140)

# Draw the repeated sample means as a histogram.
hist(sample_means, breaks = 35, col = "#9ecae1", border = "white", main = "Sampling distribution of the sample mean", xlab = "Mean wage in a sample of 25 rows (1976 dollars per hour)")

# Mark the fixed-population target with a dark vertical line.
abline(v = population_mean, col = "#08306b", lwd = 4)

# Mark the one realized estimate with an orange dashed line.
abline(v = one_sample_mean, col = "#d95f0e", lwd = 4, lty = 2)

# Add a legend that distinguishes the target from the realized estimate.
legend("topright", legend = c("Fixed-population mean", "One realized estimate"), col = c("#08306b", "#d95f0e"), lwd = 4, lty = c(1, 2), bty = "n")

# Close the PNG graphics device and save the figure.
dev.off()
