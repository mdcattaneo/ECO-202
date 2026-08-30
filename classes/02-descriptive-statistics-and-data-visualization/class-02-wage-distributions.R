# ECO 202, Class 2
# Describing the distribution of hourly wages.
# Open the Class 2 folder as the working folder before running this script.

# Read the wage data from the data subfolder.
wage1 <- read.csv("data/wage1.csv")

# Display the first six rows of the variables used in this class.
head(wage1[c("wage", "educ", "female", "nonwhite", "profocc")])

# Display the variable names.
names(wage1)

# Select the hourly-wage variable.
wage <- wage1$wage

# Count the number of records.
number_workers <- length(wage)

# Count missing hourly wages.
missing_wages <- sum(is.na(wage))

# Keep the nonmissing hourly wages for the calculations.
observed_wage <- wage[!is.na(wage)]

# Calculate the minimum hourly wage.
minimum_wage <- min(observed_wage)

# Calculate the first quartile.
first_quartile <- quantile(observed_wage, 0.25)

# Calculate the median.
median_wage <- median(observed_wage)

# Calculate the mean.
mean_wage <- mean(observed_wage)

# Calculate the third quartile.
third_quartile <- quantile(observed_wage, 0.75)

# Calculate the maximum hourly wage.
maximum_wage <- max(observed_wage)

# Calculate the sample variance.
variance_wage <- var(observed_wage)

# Calculate the sample standard deviation.
standard_deviation_wage <- sd(observed_wage)

# Calculate the interquartile range.
iqr_wage <- IQR(observed_wage)

# Calculate the lower 1.5-IQR fence.
lower_fence <- first_quartile - 1.5 * iqr_wage

# Calculate the upper 1.5-IQR fence.
upper_fence <- third_quartile + 1.5 * iqr_wage

# Identify wages outside the two fences.
outside_fences <- observed_wage < lower_fence | observed_wage > upper_fence

# Count wages outside the two fences.
number_outside <- sum(outside_fences)

# Print the number of records and missing wages.
cat("Workers:", number_workers, " Missing wages:", missing_wages, "\n")

# Print the measures of center.
cat("Mean:", mean_wage, " Median:", median_wage, "\n")

# Print the quartiles and interquartile range.
cat("Q1:", first_quartile, " Q3:", third_quartile, " IQR:", iqr_wage, "\n")

# Print the minimum and maximum.
cat("Minimum:", minimum_wage, " Maximum:", maximum_wage, "\n")

# Print the variance and standard deviation.
cat("Variance:", variance_wage, " Standard deviation:", standard_deviation_wage, "\n")

# Print the fences and the number of flagged wages.
cat("Lower fence:", lower_fence, " Upper fence:", upper_fence, " Flagged wages:", number_outside, "\n")

# Create a short label for the mean line.
mean_label <- paste("Mean =", round(mean_wage, 2))

# Create a short label for the median line.
median_label <- paste("Median =", round(median_wage, 2))

# Open a PNG file for the two graphs.
png("figures/wage-distribution.png", width = 1400, height = 650, res = 150)

# Divide the plotting area into one row and two columns.
par(mfrow = c(1, 2))

# Draw a histogram of hourly wages.
hist(observed_wage, breaks = seq(0, 26, by = 1), col = "lightblue", border = "white", main = "Hourly wages in the wage1 sample", xlab = "1976 dollars per hour", ylab = "Number of workers")

# Add a dashed vertical line at the mean.
abline(v = mean_wage, col = "firebrick", lwd = 3, lty = 2)

# Add a dotted vertical line at the median.
abline(v = median_wage, col = "navy", lwd = 3, lty = 3)

# Add a legend for the mean and median.
legend("topright", legend = c(mean_label, median_label), col = c("firebrick", "navy"), lwd = 3, lty = c(2, 3), bty = "n")

# Draw a horizontal boxplot of hourly wages.
boxplot(observed_wage, horizontal = TRUE, col = "lightblue", main = "Boxplot and 1.5-IQR flags", xlab = "1976 dollars per hour")

# Close the PNG file.
dev.off()
