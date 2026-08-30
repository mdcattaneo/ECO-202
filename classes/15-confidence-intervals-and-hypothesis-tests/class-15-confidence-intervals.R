# ECO 202, Class 15
# Confidence intervals, coverage, and the connection to hypothesis tests.
# Open the Class 15 folder as the working folder before running this script.

# Read the historical job-training data from the class-local data folder.
jtrain2 <- read.csv("data/jtrain2.csv")

# Display the first six assignment and 1978 earnings records.
head(jtrain2[c("train", "re78")])

# Count missing assignment indicators.
missing_assignment <- sum(is.na(jtrain2$train))

# Count missing 1978 earnings values.
missing_earnings <- sum(is.na(jtrain2$re78))

# Print the two missing-value checks.
cat("Missing assignment:", missing_assignment, " Missing re78:", missing_earnings, "\n")

# Keep 1978 earnings for participants assigned to training.
training_earnings <- jtrain2$re78[jtrain2$train == 1]

# Keep 1978 earnings for participants assigned to control.
control_earnings <- jtrain2$re78[jtrain2$train == 0]

# Count participants assigned to training.
number_training <- length(training_earnings)

# Count participants assigned to control.
number_control <- length(control_earnings)

# Calculate mean 1978 earnings in the assigned-training group.
mean_training <- mean(training_earnings)

# Calculate mean 1978 earnings in the assigned-control group.
mean_control <- mean(control_earnings)

# Calculate the intention-to-treat difference in sample means.
effect_estimate <- mean_training - mean_control

# Calculate the sample variance in the assigned-training group.
variance_training <- var(training_earnings)

# Calculate the sample variance in the assigned-control group.
variance_control <- var(control_earnings)

# Calculate the conventional large-sample standard error.
standard_error <- sqrt(variance_training / number_training + variance_control / number_control)

# Set the central probability for a 95 percent interval.
confidence_level_95 <- 0.95

# Calculate the two-sided standard Normal critical value.
critical_value_95 <- qnorm(1 - (1 - confidence_level_95) / 2)

# Calculate the 95 percent margin of error.
margin_95 <- critical_value_95 * standard_error

# Calculate the lower endpoint of the 95 percent interval.
lower_95 <- effect_estimate - margin_95

# Calculate the upper endpoint of the 95 percent interval.
upper_95 <- effect_estimate + margin_95

# Standardize the estimate under the zero-effect null hypothesis.
zero_effect_z <- effect_estimate / standard_error

# Calculate the two-sided standard Normal p-value for a zero effect.
zero_effect_p_value <- 2 * (1 - pnorm(abs(zero_effect_z)))

# Print the group sizes, group means, and effect estimate.
cat("Training n and mean:", number_training, mean_training, " Control n and mean:", number_control, mean_control, " Difference:", effect_estimate, "\n")

# Print the standard error, margin, and interval endpoints.
cat("SE:", standard_error, " 95 percent margin:", margin_95, " Interval:", lower_95, upper_95, "\n")

# Print the matching two-sided zero-effect test.
cat("Zero-effect Z:", zero_effect_z, " Two-sided p-value:", zero_effect_p_value, "\n")

# Set the central probability for a 90 percent interval.
confidence_level_90 <- 0.90

# Calculate the two-sided critical value for a 90 percent interval.
critical_value_90 <- qnorm(1 - (1 - confidence_level_90) / 2)

# Calculate the 90 percent margin of error.
margin_90 <- critical_value_90 * standard_error

# Calculate the two endpoints of the 90 percent interval.
interval_90 <- effect_estimate + c(-1, 1) * margin_90

# Set the central probability for a 99 percent interval.
confidence_level_99 <- 0.99

# Calculate the two-sided critical value for a 99 percent interval.
critical_value_99 <- qnorm(1 - (1 - confidence_level_99) / 2)

# Calculate the 99 percent margin of error.
margin_99 <- critical_value_99 * standard_error

# Calculate the two endpoints of the 99 percent interval.
interval_99 <- effect_estimate + c(-1, 1) * margin_99

# Print the 90 percent critical value, margin, and endpoints.
cat("90 percent:", critical_value_90, margin_90, interval_90, "\n")

# Print the 99 percent critical value, margin, and endpoints.
cat("99 percent:", critical_value_99, margin_99, interval_99, "\n")

# Set a fixed target for the transparent coverage teaching model.
simulation_target <- effect_estimate

# Use the empirical standard error as a fixed known simulation spread.
simulation_standard_error <- standard_error

# Set the number of intervals displayed in the coverage demonstration.
number_intervals <- 100

# Set a seed so the coverage demonstration is reproducible.
set.seed(202615)

# Draw independent Normal estimator realizations around the fixed teaching target.
simulated_estimates <- rnorm(number_intervals, mean = simulation_target, sd = simulation_standard_error)

# Calculate the lower endpoints of the simulated 95 percent intervals.
simulated_lower <- simulated_estimates - critical_value_95 * simulation_standard_error

# Calculate the upper endpoints of the simulated 95 percent intervals.
simulated_upper <- simulated_estimates + critical_value_95 * simulation_standard_error

# Record whether each simulated interval covers the fixed teaching target.
simulated_covers <- simulated_lower <= simulation_target & simulated_upper >= simulation_target

# Count the simulated intervals that cover the fixed teaching target.
number_covering <- sum(simulated_covers)

# Calculate the simulated coverage rate.
simulated_coverage_rate <- mean(simulated_covers)

# Print the simulated coverage count and rate.
cat("Simulated intervals:", number_intervals, " Covering:", number_covering, " Coverage rate:", simulated_coverage_rate, "\n")

# Set one color for intervals that cover the target.
cover_color <- "#3182bd"

# Set another color for intervals that miss the target.
miss_color <- "#de2d26"

# Assign a plotting color to every simulated interval.
interval_colors <- ifelse(simulated_covers, cover_color, miss_color)

# Calculate the horizontal plotting range from all interval endpoints.
horizontal_range <- range(c(simulated_lower, simulated_upper, simulation_target))

# Open a PNG file for the coverage figure.
png("figures/confidence-interval-coverage.png", width = 1250, height = 1050, res = 150)

# Create an empty panel with one row for every simulated interval.
plot(NA, xlim = horizontal_range, ylim = c(1, number_intervals + 12), xlab = "Effect estimate and 95% interval (thousands of 1982 dollars)", ylab = "Repeated sample", main = "Coverage belongs to the interval procedure")

# Draw every simulated confidence interval.
for (interval_number in 1:number_intervals) {
  # Draw the interval as a horizontal segment.
  segments(simulated_lower[interval_number], interval_number, simulated_upper[interval_number], interval_number, col = interval_colors[interval_number], lwd = 2)
  # Mark the simulated estimate at the center of the interval.
  points(simulated_estimates[interval_number], interval_number, pch = 16, cex = 0.45, col = interval_colors[interval_number])

  # Finish drawing this simulated interval.
}

# Mark the fixed teaching target with a vertical dashed line.
abline(v = simulation_target, lwd = 3, lty = 2, col = "#252525")

# Add a legend for covering intervals, misses, and the fixed target.
legend("topright", legend = c("Covers target", "Misses target", "Fixed teaching target"), col = c(cover_color, miss_color, "#252525"), lwd = c(2, 2, 3), lty = c(1, 1, 2), bty = "n")

# Close the PNG graphics device and save the figure.
dev.off()
