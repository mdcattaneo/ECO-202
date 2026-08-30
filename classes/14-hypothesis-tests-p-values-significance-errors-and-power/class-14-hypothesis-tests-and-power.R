# ECO 202, Class 14
# Hypothesis tests, p-values, errors, and power.
# Open the Class 14 folder as the working folder before running this script.

# Read the historical job-training data from the class-local data folder.
jtrain2 <- read.csv("data/jtrain2.csv")

# Display the assignment and outcome variables for the first six rows.
head(jtrain2[c("train", "re78")])

# Count all rows in the data file.
number_rows <- nrow(jtrain2)

# Count missing assignment indicators.
missing_assignment <- sum(is.na(jtrain2$train))

# Count missing 1978 earnings outcomes.
missing_earnings <- sum(is.na(jtrain2$re78))

# Print the file size and missing-value checks.
cat("Rows:", number_rows, " Missing train:", missing_assignment, " Missing re78:", missing_earnings, "\n")

# Keep 1978 earnings for participants assigned to training.
training_earnings <- jtrain2$re78[jtrain2$train == 1]

# Keep 1978 earnings for participants assigned to control.
control_earnings <- jtrain2$re78[jtrain2$train == 0]

# Count participants assigned to training.
number_training <- length(training_earnings)

# Count participants assigned to control.
number_control <- length(control_earnings)

# Calculate mean earnings for the training-assignment group.
mean_training <- mean(training_earnings)

# Calculate mean earnings for the control-assignment group.
mean_control <- mean(control_earnings)

# Calculate the training-minus-control difference in means.
estimated_effect <- mean_training - mean_control

# Calculate the sample standard deviation in the training-assignment group.
sd_training <- sd(training_earnings)

# Calculate the sample standard deviation in the control-assignment group.
sd_control <- sd(control_earnings)

# Calculate the large-sample unpooled estimated standard error.
estimated_standard_error <- sqrt(sd_training^2 / number_training + sd_control^2 / number_control)

# State the zero-effect value under the null hypothesis.
null_effect <- 0

# Standardize the estimated effect relative to the null value.
observed_z <- (estimated_effect - null_effect) / estimated_standard_error

# Calculate the upper-sided standard Normal reference p-value.
upper_sided_p_value <- pnorm(observed_z, lower.tail = FALSE)

# Calculate the two-sided standard Normal reference p-value.
two_sided_p_value <- 2 * pnorm(abs(observed_z), lower.tail = FALSE)

# Print the group counts, means, and standard deviations.
cat("Training n:", number_training, " Mean:", mean_training, " SD:", sd_training, "\n")

# Print the control-group count, mean, and standard deviation.
cat("Control n:", number_control, " Mean:", mean_control, " SD:", sd_control, "\n")

# Print the estimated effect and its estimated standard error.
cat("Difference:", estimated_effect, " Estimated SE:", estimated_standard_error, "\n")

# Print the standardized statistic and both reference p-values.
cat("Z:", observed_z, " Upper-sided p-value:", upper_sided_p_value, " Two-sided p-value:", two_sided_p_value, "\n")

# Set the significance level for the two-sided decision rule.
alpha <- 0.05

# Calculate the positive standard Normal critical value.
critical_value <- qnorm(1 - alpha / 2)

# Apply the two-sided decision rule.
reject_null <- abs(observed_z) > critical_value

# Print the significance level, critical value, and decision indicator.
cat("Alpha:", alpha, " Critical value:", critical_value, " Reject null:", reject_null, "\n")

# List four alternative average effects for the power comparison.
alternative_effects <- c(0.5, 1.0, 1.5, 2.0)

# Use the observed group standard deviations as fixed planning values.
planning_standard_error <- estimated_standard_error

# Calculate the reference-distribution shifts at the four alternatives.
alternative_shifts <- alternative_effects / planning_standard_error

# Calculate rejection probabilities in the upper tail at each alternative.
upper_rejection_probabilities <- pnorm(critical_value - alternative_shifts, lower.tail = FALSE)

# Calculate rejection probabilities in the lower tail at each alternative.
lower_rejection_probabilities <- pnorm(-critical_value - alternative_shifts)

# Add the two rejection probabilities to obtain two-sided power.
alternative_power <- upper_rejection_probabilities + lower_rejection_probabilities

# Combine the effect sizes, shifts, and powers in a compact table.
power_table <- data.frame(effect = alternative_effects, shift = alternative_shifts, power = alternative_power)

# Print the power table.
print(power_table)

# Create a fine grid of standard Normal reference values.
z_grid <- seq(-4, 4, length.out = 801)

# Calculate the standard Normal density along the grid.
null_density <- dnorm(z_grid)

# Keep grid values in the left tail beyond the observed magnitude.
left_tail_z <- z_grid[z_grid <= -abs(observed_z)]

# Calculate the standard Normal density in that left tail.
left_tail_density <- dnorm(left_tail_z)

# Keep grid values in the right tail beyond the observed magnitude.
right_tail_z <- z_grid[z_grid >= abs(observed_z)]

# Calculate the standard Normal density in that right tail.
right_tail_density <- dnorm(right_tail_z)

# Create a fine grid of alternative effects for a smooth power curve.
effect_grid <- seq(0, 2.5, by = 0.01)

# Calculate the reference-distribution shift for every effect on the grid.
effect_grid_shifts <- effect_grid / planning_standard_error

# Calculate upper-tail rejection probabilities along the effect grid.
effect_grid_upper_power <- pnorm(critical_value - effect_grid_shifts, lower.tail = FALSE)

# Calculate lower-tail rejection probabilities along the effect grid.
effect_grid_lower_power <- pnorm(-critical_value - effect_grid_shifts)

# Add both tails to obtain the two-sided power curve.
effect_grid_power <- effect_grid_upper_power + effect_grid_lower_power

# Open a PNG file for the reference-distribution and power figure.
png("figures/jtrain2-testing-and-power.png", width = 1600, height = 720, res = 140)

# Arrange the reference distribution and power curve side by side.
par(mfrow = c(1, 2), mar = c(5, 5, 4, 1) + 0.1)

# Draw the standard Normal null reference density.
plot(z_grid, null_density, type = "l", lwd = 3, col = "#253494", xlab = "Standardized statistic under the null", ylab = "Density", main = "Two-sided Normal reference")

# Shade null outcomes at least as negative as the observed magnitude.
polygon(c(min(left_tail_z), left_tail_z, max(left_tail_z)), c(0, left_tail_density, 0), col = "#fc8d59", border = NA)

# Shade null outcomes at least as positive as the observed magnitude.
polygon(c(min(right_tail_z), right_tail_z, max(right_tail_z)), c(0, right_tail_density, 0), col = "#fc8d59", border = NA)

# Redraw the reference-density outline above the shaded tails.
lines(z_grid, null_density, lwd = 3, col = "#253494")

# Mark the two 5% critical values with dashed lines.
abline(v = c(-critical_value, critical_value), lty = 2, lwd = 2, col = "#555555")

# Mark the observed positive standardized statistic with a solid line.
abline(v = observed_z, lwd = 3, col = "#b30000")

# Add a legend for the critical values, observed statistic, and p-value tails.
legend("topleft", legend = c("5% critical values", "Observed Z = 2.674", "Two-sided p-value tails"), col = c("#555555", "#b30000", "#fc8d59"), lty = c(2, 1, 1), lwd = c(2, 3, 7), bty = "n", cex = 0.85)

# Draw the two-sided power curve under the fixed reference setup.
plot(effect_grid, effect_grid_power, type = "l", lwd = 4, col = "#238b45", ylim = c(0, 1), xlab = "True average ITT effect (thousand 1982 dollars)", ylab = "Approximate power", main = "Power for fixed n and planning SDs")

# Mark the four benchmark effect sizes and powers.
points(alternative_effects, alternative_power, pch = 19, cex = 1.3, col = "#005a32")

# Mark 80% power as a visual planning benchmark.
abline(h = 0.80, lty = 2, lwd = 2, col = "#555555")

# Label the four benchmark power values.
text(alternative_effects, alternative_power, labels = sprintf("%.3f", alternative_power), pos = 3, cex = 0.82)

# Add a note identifying the two-sided 5% procedure.
mtext("Two-sided alpha = 0.05; n = 185 and 260; SE = 0.6710", side = 1, line = 3.6, cex = 0.82)

# Close the PNG graphics device and save the figure.
dev.off()
