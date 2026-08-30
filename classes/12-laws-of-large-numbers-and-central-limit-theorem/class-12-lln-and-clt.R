# ECO 202, Class 12
# Laws of large numbers and the central limit theorem.
# Open the Class 12 folder as the working folder before running this script.

# Read the historical wage data from the class-local data folder.
wage_data <- read.csv("data/wage1.csv")

# Keep the recorded hourly wages as a fixed teaching population.
wage_population <- wage_data$wage[!is.na(wage_data$wage)]

# Count the rows in the fixed teaching population.
population_size <- length(wage_population)

# Calculate the fixed-population mean wage.
population_mean <- sum(wage_population) / population_size

# Calculate deviations from the fixed-population mean.
population_deviations <- wage_population - population_mean

# Calculate the fixed-population variance using denominator N.
population_variance <- sum(population_deviations^2) / population_size

# Calculate the fixed-population standard deviation.
population_standard_deviation <- sqrt(population_variance)

# Count the rows with a recorded wage of at least 6 dollars per hour.
number_threshold_successes <- sum(wage_population >= 6)

# Calculate the threshold probability for one equally likely row draw.
threshold_probability <- number_threshold_successes / population_size

# Print the fixed teaching-population quantities.
cat("Population rows:", population_size, " Mean:", population_mean, " SD:", population_standard_deviation, " Threshold probability:", threshold_probability, "\n")

# Set the first sample size for the sample-mean comparison.
sample_size_25 <- 25

# Set the second sample size for the sample-mean comparison.
sample_size_100 <- 100

# Calculate the exact standard error for a mean of 25 independent row draws.
standard_error_25 <- population_standard_deviation / sqrt(sample_size_25)

# Calculate the exact standard error for a mean of 100 independent row draws.
standard_error_100 <- population_standard_deviation / sqrt(sample_size_100)

# Set the wage-mean boundary used in the CLT tail calculation.
wage_mean_boundary <- 6.5

# Standardize the boundary for a sample mean based on 25 draws.
z_boundary_25 <- (wage_mean_boundary - population_mean) / standard_error_25

# Standardize the boundary for a sample mean based on 100 draws.
z_boundary_100 <- (wage_mean_boundary - population_mean) / standard_error_100

# Calculate the CLT tail approximation for a mean based on 25 draws.
normal_tail_25 <- 1 - pnorm(z_boundary_25)

# Calculate the CLT tail approximation for a mean based on 100 draws.
normal_tail_100 <- 1 - pnorm(z_boundary_100)

# Print the two analytic CLT calculations.
cat("n=25 SE:", standard_error_25, " z:", z_boundary_25, " Normal tail:", normal_tail_25, "\n")

# Print the second analytic CLT calculation.
cat("n=100 SE:", standard_error_100, " z:", z_boundary_100, " Normal tail:", normal_tail_100, "\n")

# Set a seed so the running-average demonstration is reproducible.
set.seed(202612)

# Draw one sequence of 400 rows independently with replacement.
long_sample <- sample(wage_population, size = 400, replace = TRUE)

# Create the observation numbers from 1 through 400.
observation_number <- 1:400

# Calculate the running average after each successive observation.
running_average <- cumsum(long_sample) / observation_number

# Set the number of repeated samples for the CLT demonstration.
number_repetitions <- 10000

# Create an empty vector for sample means based on 25 draws.
sample_means_25 <- numeric(number_repetitions)

# Create an empty vector for sample means based on 100 draws.
sample_means_100 <- numeric(number_repetitions)

# Repeat both row-sampling experiments many times.
for (repetition in 1:number_repetitions) {
  # Draw 25 rows independently with replacement.
  sample_25 <- sample(wage_population, size = sample_size_25, replace = TRUE)
  # Save the mean of the 25 selected wages.
  sample_means_25[repetition] <- mean(sample_25)
  # Draw 100 rows independently with replacement.
  sample_100 <- sample(wage_population, size = sample_size_100, replace = TRUE)
  # Save the mean of the 100 selected wages.
  sample_means_100[repetition] <- mean(sample_100)

  # End this repeated-sampling iteration.
}

# Standardize each simulated mean based on 25 draws.
standardized_means_25 <- (sample_means_25 - population_mean) / standard_error_25

# Standardize each simulated mean based on 100 draws.
standardized_means_100 <- (sample_means_100 - population_mean) / standard_error_100

# Calculate the simulated sample-mean tail for n equal to 25.
simulated_tail_25 <- mean(sample_means_25 > wage_mean_boundary)

# Calculate the simulated sample-mean tail for n equal to 100.
simulated_tail_100 <- mean(sample_means_100 > wage_mean_boundary)

# Print the simulated centers, standard deviations, and tail probabilities.
cat("Simulation n=25 mean:", mean(sample_means_25), " SD:", sd(sample_means_25), " Tail:", simulated_tail_25, "\n")

# Print the corresponding simulation checks for n equal to 100.
cat("Simulation n=100 mean:", mean(sample_means_100), " SD:", sd(sample_means_100), " Tail:", simulated_tail_100, "\n")

# Set the number of Bernoulli row draws for the count example.
count_sample_size <- 100

# Set the smallest count included in the upper-tail event.
count_boundary <- 45

# Calculate the exact binomial probability of at least 45 successes.
exact_count_tail <- 1 - pbinom(count_boundary - 1, size = count_sample_size, prob = threshold_probability)

# Calculate the mean of the binomial count.
count_mean <- count_sample_size * threshold_probability

# Calculate the standard deviation of the binomial count.
count_standard_deviation <- sqrt(count_sample_size * threshold_probability * (1 - threshold_probability))

# Use the half-unit boundary between 44 and 45 for the continuity correction.
continuity_boundary <- count_boundary - 0.5

# Standardize the continuity-corrected boundary.
continuity_z <- (continuity_boundary - count_mean) / count_standard_deviation

# Calculate the continuity-corrected Normal tail.
continuity_normal_tail <- 1 - pnorm(continuity_z)

# Standardize the uncorrected count boundary for comparison.
uncorrected_z <- (count_boundary - count_mean) / count_standard_deviation

# Calculate the uncorrected Normal tail for comparison.
uncorrected_normal_tail <- 1 - pnorm(uncorrected_z)

# Print the exact and approximate count probabilities.
cat("Count mean:", count_mean, " SD:", count_standard_deviation, " Exact tail:", exact_count_tail, " Corrected Normal tail:", continuity_normal_tail, " Uncorrected Normal tail:", uncorrected_normal_tail, "\n")

# Create x-values for the standard Normal density curve.
normal_x <- seq(-4, 4, length.out = 401)

# Calculate the standard Normal density at the x-values.
normal_y <- dnorm(normal_x)

# Open a PNG file for the LLN and CLT figure.
png("figures/lln-and-clt-wage-demonstration.png", width = 1500, height = 920, res = 150)

# Arrange the three teaching panels in one row.
par(mfrow = c(1, 3))

# Plot the running wage average against the number of observations.
plot(observation_number, running_average, type = "l", lwd = 2, col = "#2b8cbe", xlab = "Number of row draws", ylab = "Mean wage (1976 dollars per hour)", main = "One running average")

# Mark the fixed-population mean on the running-average panel.
abline(h = population_mean, lwd = 3, lty = 2, col = "#d95f0e")

# Draw the standardized sample means for n equal to 25.
hist(standardized_means_25, breaks = 35, probability = TRUE, col = "#9ecae1", border = "white", xlim = c(-4, 4), ylim = c(0, 0.45), xlab = "Standardized sample mean", main = "CLT scale: n = 25")

# Add the standard Normal density to the n equal to 25 panel.
lines(normal_x, normal_y, lwd = 3, col = "#d95f0e")

# Draw the standardized sample means for n equal to 100.
hist(standardized_means_100, breaks = 35, probability = TRUE, col = "#74c476", border = "white", xlim = c(-4, 4), ylim = c(0, 0.45), xlab = "Standardized sample mean", main = "CLT scale: n = 100")

# Add the standard Normal density to the n equal to 100 panel.
lines(normal_x, normal_y, lwd = 3, col = "#d95f0e")

# Close the PNG graphics device and save the figure.
dev.off()
