# ECO 202, Class 3
# Standardization and Normal-model diagnostics for birth weight.
# Open the Class 3 folder as the working folder before running this script.

# Read the birth-weight data from the data subfolder.
births <- read.csv("data/bwght.csv")

# Display the first six rows of the variables used in this module.
head(births[c("bwght", "cigs", "faminc")])

# Display the variable names.
names(births)

# Select birth weight in ounces.
birth_weight <- births$bwght

# Count missing birth weights.
missing_birth_weights <- sum(is.na(birth_weight))

# Keep the nonmissing birth weights for the calculations.
observed_birth_weight <- birth_weight[!is.na(birth_weight)]

# Count the observed births.
number_births <- length(observed_birth_weight)

# Calculate the sample mean in ounces.
mean_ounces <- mean(observed_birth_weight)

# Calculate the sample standard deviation in ounces.
sd_ounces <- sd(observed_birth_weight)

# Convert the sample mean to pounds.
mean_pounds <- mean_ounces / 16

# Convert the sample standard deviation to pounds.
sd_pounds <- sd_ounces / 16

# Set the low-birth-weight cutoff used in the example.
cutoff <- 88

# Standardize the 88-ounce cutoff.
z_cutoff <- (cutoff - mean_ounces) / sd_ounces

# Calculate the observed fraction below 88 ounces.
observed_fraction <- mean(observed_birth_weight < cutoff)

# Calculate the fitted Normal probability below 88 ounces.
fitted_probability <- pnorm(cutoff, mean = mean_ounces, sd = sd_ounces)

# Calculate the textbook-model probability below 88 ounces.
textbook_probability <- pnorm(88, mean = 120, sd = 20)

# Calculate the tenth percentile of the N(120, 20^2) model.
textbook_tenth_percentile <- qnorm(0.10, mean = 120, sd = 20)

# Print the data counts.
cat("Births:", number_births, " Missing birth weights:", missing_birth_weights, "\n")

# Print the mean and standard deviation in ounces.
cat("Mean ounces:", mean_ounces, " Standard deviation ounces:", sd_ounces, "\n")

# Print the mean and standard deviation in pounds.
cat("Mean pounds:", mean_pounds, " Standard deviation pounds:", sd_pounds, "\n")

# Print the standardized cutoff.
cat("z-score for 88 ounces:", z_cutoff, "\n")

# Print the empirical and fitted probabilities.
cat("Observed fraction below 88:", observed_fraction, " Fitted Normal probability:", fitted_probability, "\n")

# Print the two calculations from the N(120, 20^2) model.
cat("N(120,20^2) probability below 88:", textbook_probability, " Tenth percentile:", textbook_tenth_percentile, "\n")

# Open a PNG file for the two diagnostic graphs.
png("figures/birthweight-normal-diagnostics.png", width = 1400, height = 650, res = 150)

# Divide the plotting area into one row and two columns and set readable margins.
par(mfrow = c(1, 2), mar = c(4.5, 4.5, 3, 1))

# Draw a density-scaled histogram of birth weight.
hist(observed_birth_weight, breaks = seq(20, 275, by = 5), probability = TRUE, col = "lightblue", border = "white", main = "Birth weights and fitted Normal curve", xlab = "Birth weight (ounces)", ylab = "Density")

# Add the fitted Normal density curve.
curve(dnorm(x, mean = mean_ounces, sd = sd_ounces), from = 20, to = 275, add = TRUE, col = "firebrick", lwd = 3)

# Add the 88-ounce cutoff.
abline(v = cutoff, col = "navy", lwd = 2, lty = 2)

# Draw the Normal quantile plot.
qqnorm(observed_birth_weight, pch = 16, cex = 0.45, col = "steelblue", main = "Normal quantile plot")

# Add the Normal reference line.
qqline(observed_birth_weight, col = "firebrick", lwd = 3)

# Close the PNG file.
dev.off()
