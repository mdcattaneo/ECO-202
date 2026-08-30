# ECO 202, Class 16
# Inference for and comparison of means and proportions.
# Open the Class 16 folder as the working folder before running this script.

# Read the historical birth-weight data from the class-local data folder.
bwght_data <- read.csv("data/bwght.csv")

# Display the first six birth-weight and cigarette records.
head(bwght_data[c("bwght", "cigs")])

# Count records with missing birth weight or cigarette information.
missing_required <- sum(is.na(bwght_data$bwght) | is.na(bwght_data$cigs))

# Print the missing-value check.
cat("Records missing bwght or cigs:", missing_required, "\n")

# Keep rows with observed birth weight and cigarette information.
complete_rows <- !is.na(bwght_data$bwght) & !is.na(bwght_data$cigs)

# Keep birth weights for records with smoking during pregnancy.
smoking_birth_weight <- bwght_data$bwght[complete_rows & bwght_data$cigs > 0]

# Keep birth weights for records with no smoking during pregnancy.
nonsmoking_birth_weight <- bwght_data$bwght[complete_rows & bwght_data$cigs == 0]

# Count records in the smoking group.
number_smoking <- length(smoking_birth_weight)

# Count records in the nonsmoking group.
number_nonsmoking <- length(nonsmoking_birth_weight)

# Calculate the smoking-group mean birth weight.
mean_smoking <- mean(smoking_birth_weight)

# Calculate the nonsmoking-group mean birth weight.
mean_nonsmoking <- mean(nonsmoking_birth_weight)

# Calculate the smoking-minus-nonsmoking mean difference.
mean_difference <- mean_smoking - mean_nonsmoking

# Calculate the smoking-group sample standard deviation.
sd_smoking <- sd(smoking_birth_weight)

# Calculate the nonsmoking-group sample standard deviation.
sd_nonsmoking <- sd(nonsmoking_birth_weight)

# Calculate the Welch estimated standard error for the mean difference.
mean_standard_error <- sqrt(sd_smoking^2 / number_smoking + sd_nonsmoking^2 / number_nonsmoking)

# Calculate the Welch standardized statistic for a zero mean difference.
mean_t_statistic <- mean_difference / mean_standard_error

# Calculate the numerator of the Welch degrees-of-freedom formula.
welch_df_numerator <- (sd_smoking^2 / number_smoking + sd_nonsmoking^2 / number_nonsmoking)^2

# Calculate the denominator of the Welch degrees-of-freedom formula.
welch_df_denominator <- (sd_smoking^2 / number_smoking)^2 / (number_smoking - 1) + (sd_nonsmoking^2 / number_nonsmoking)^2 / (number_nonsmoking - 1)

# Calculate the Welch approximate degrees of freedom.
welch_degrees_freedom <- welch_df_numerator / welch_df_denominator

# Calculate the two-sided Welch p-value.
mean_p_value <- 2 * pt(-abs(mean_t_statistic), df = welch_degrees_freedom)

# Calculate the 95 percent Welch critical value.
mean_critical_value <- qt(0.975, df = welch_degrees_freedom)

# Calculate the lower endpoint of the mean-difference interval.
mean_lower <- mean_difference - mean_critical_value * mean_standard_error

# Calculate the upper endpoint of the mean-difference interval.
mean_upper <- mean_difference + mean_critical_value * mean_standard_error

# Print the two group summaries.
cat("Smoking n, mean, SD:", number_smoking, mean_smoking, sd_smoking, " Nonsmoking n, mean, SD:", number_nonsmoking, mean_nonsmoking, sd_nonsmoking, "\n")

# Print the mean-difference inference.
cat("Mean difference:", mean_difference, " SE:", mean_standard_error, " t:", mean_t_statistic, " df:", welch_degrees_freedom, " p:", mean_p_value, " CI:", mean_lower, mean_upper, "\n")

# Set the low-birth-weight threshold at 88 ounces.
low_birth_weight_threshold <- 88

# Count low-birth-weight records in the smoking group.
low_count_smoking <- sum(smoking_birth_weight < low_birth_weight_threshold)

# Count low-birth-weight records in the nonsmoking group.
low_count_nonsmoking <- sum(nonsmoking_birth_weight < low_birth_weight_threshold)

# Calculate the low-birth-weight proportion in the smoking group.
low_proportion_smoking <- low_count_smoking / number_smoking

# Calculate the low-birth-weight proportion in the nonsmoking group.
low_proportion_nonsmoking <- low_count_nonsmoking / number_nonsmoking

# Calculate the smoking-minus-nonsmoking proportion difference.
proportion_difference <- low_proportion_smoking - low_proportion_nonsmoking

# Calculate the unpooled estimated standard error for the proportion difference.
proportion_standard_error <- sqrt(low_proportion_smoking * (1 - low_proportion_smoking) / number_smoking + low_proportion_nonsmoking * (1 - low_proportion_nonsmoking) / number_nonsmoking)

# Calculate the matching unpooled standardized statistic.
unpooled_z_statistic <- proportion_difference / proportion_standard_error

# Calculate the matching two-sided unpooled Normal p-value.
unpooled_p_value <- 2 * (1 - pnorm(abs(unpooled_z_statistic)))

# Calculate the lower endpoint of the unpooled 95 percent interval.
proportion_lower <- proportion_difference - 1.96 * proportion_standard_error

# Calculate the upper endpoint of the unpooled 95 percent interval.
proportion_upper <- proportion_difference + 1.96 * proportion_standard_error

# Print the group counts and proportions.
cat("Low birth weight counts:", low_count_smoking, low_count_nonsmoking, " Proportions:", low_proportion_smoking, low_proportion_nonsmoking, "\n")

# Print the unpooled proportion-difference inference.
cat("Proportion difference:", proportion_difference, " Unpooled SE:", proportion_standard_error, " z:", unpooled_z_statistic, " p:", unpooled_p_value, " CI:", proportion_lower, proportion_upper, "\n")

# Create readable smoking-status labels for the figure.
smoking_status <- ifelse(bwght_data$cigs[complete_rows] > 0, "Recorded smoking", "No recorded smoking")

# Keep complete-case birth weights for the figure.
complete_birth_weight <- bwght_data$bwght[complete_rows]

# Store the two low-birth-weight proportions for the figure.
low_proportions <- c(low_proportion_smoking, low_proportion_nonsmoking)

# Open a PNG file for the two empirical comparisons.
png("figures/bwght-smoking-comparisons.png", width = 1450, height = 760, res = 140)

# Arrange the quantitative and binary outcome panels side by side.
par(mfrow = c(1, 2))

# Draw birth-weight boxplots by recorded smoking status.
boxplot(complete_birth_weight ~ smoking_status, col = c("#9ecae1", "#fdae6b"), ylab = "Birth weight (ounces)", xlab = "Recorded smoking status", main = "Birth-weight distributions")

# Draw the low-birth-weight proportions by recorded smoking status.
proportion_bars <- barplot(low_proportions, names.arg = c("Recorded\nsmoking", "No recorded\nsmoking"), col = c("#fdae6b", "#9ecae1"), ylim = c(0, 0.12), ylab = "Proportion below 88 ounces", xlab = "Recorded smoking status", main = "Low-birth-weight proportions")

# Add the numerical proportions above the bars.
text(proportion_bars, low_proportions, labels = sprintf("%.3f", low_proportions), pos = 3)

# Close the PNG graphics device and save the figure.
dev.off()
