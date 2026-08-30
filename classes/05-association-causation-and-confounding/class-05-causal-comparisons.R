# ECO 202, Class 5
# Descriptive group comparisons and a fictional potential-outcomes table.
# Open the Class 5 folder as the working folder before running this script.

# Read the birth-weight data from the data subfolder.
births <- read.csv("data/bwght.csv")

# Display the first six rows of the variables used in this class.
head(births[c("bwght", "cigs", "faminc")])

# Identify rows with observed birth weight, cigarettes, and family income.
complete_rows <- !is.na(births$bwght) & !is.na(births$cigs) & !is.na(births$faminc)

# Restrict the data to the complete rows.
births <- births[complete_rows, ]

# Mark records with positive reported cigarette consumption.
smoker <- births$cigs > 0

# Select birth weights for records with zero reported cigarettes.
birth_weight_zero <- births$bwght[!smoker]

# Select birth weights for records with positive reported cigarettes.
birth_weight_positive <- births$bwght[smoker]

# Select family incomes for records with zero reported cigarettes.
income_zero <- births$faminc[!smoker]

# Select family incomes for records with positive reported cigarettes.
income_positive <- births$faminc[smoker]

# Count records in the zero-cigarette group.
number_zero <- length(birth_weight_zero)

# Count records in the positive-cigarette group.
number_positive <- length(birth_weight_positive)

# Calculate mean birth weight in the zero-cigarette group.
mean_birth_weight_zero <- mean(birth_weight_zero)

# Calculate mean birth weight in the positive-cigarette group.
mean_birth_weight_positive <- mean(birth_weight_positive)

# Calculate the positive-minus-zero birth-weight difference.
birth_weight_difference <- mean_birth_weight_positive - mean_birth_weight_zero

# Calculate mean family income in the zero-cigarette group.
mean_income_zero <- mean(income_zero)

# Calculate mean family income in the positive-cigarette group.
mean_income_positive <- mean(income_positive)

# Calculate the positive-minus-zero family-income difference.
income_difference <- mean_income_positive - mean_income_zero

# Print the two group sizes.
cat("Zero-cigarette records:", number_zero, " Positive-cigarette records:", number_positive, "\n")

# Print the two mean birth weights and their difference.
cat("Mean birth weight, zero:", mean_birth_weight_zero, " Mean birth weight, positive:", mean_birth_weight_positive, " Difference:", birth_weight_difference, "\n")

# Print the two mean family incomes and their difference.
cat("Mean family income, zero:", mean_income_zero, " Mean family income, positive:", mean_income_positive, " Difference:", income_difference, "\n")

# Create a complete fictional potential-outcomes table for four units.
potential_outcomes <- data.frame(unit = c("A", "B", "C", "D"), y0 = c(4, 6, 2, 5), y1 = c(7, 7, 4, 6), treated = c(1, 1, 0, 0))

# Calculate each unit's treatment effect.
potential_outcomes$effect <- potential_outcomes$y1 - potential_outcomes$y0

# Select the observed outcome using each unit's treatment status.
potential_outcomes$observed <- ifelse(potential_outcomes$treated == 1, potential_outcomes$y1, potential_outcomes$y0)

# Print the complete fictional table.
print(potential_outcomes)

# Calculate the average treatment effect across all four units.
average_treatment_effect <- mean(potential_outcomes$effect)

# Calculate the average treatment effect among the treated units.
effect_for_treated <- mean(potential_outcomes$effect[potential_outcomes$treated == 1])

# Calculate the observed treated-minus-untreated difference.
observed_difference <- mean(potential_outcomes$observed[potential_outcomes$treated == 1]) - mean(potential_outcomes$observed[potential_outcomes$treated == 0])

# Calculate the untreated-potential-outcome selection difference.
selection_difference <- mean(potential_outcomes$y0[potential_outcomes$treated == 1]) - mean(potential_outcomes$y0[potential_outcomes$treated == 0])

# Add the treated effect and the selection difference as an identity check.
decomposition_check <- effect_for_treated + selection_difference

# Print the potential-outcomes calculations.
cat("ATE:", average_treatment_effect, " Effect for treated:", effect_for_treated, "\n")

# Print the observed difference and its decomposition check.
cat("Observed difference:", observed_difference, " Effect plus selection:", decomposition_check, "\n")

# Open a PNG file for the two descriptive comparisons.
png("figures/smoking-birthweight-comparisons.png", width = 1400, height = 650, res = 150)

# Divide the plotting area into one row and two columns and set readable margins.
par(mfrow = c(1, 2), mar = c(5, 4.5, 3, 1))

# Draw birth-weight boxplots for the two reported-cigarette groups.
boxplot(births$bwght ~ smoker, names = c("Zero", "Positive"), col = c("lightblue", "mistyrose"), main = "Birth weight (descriptive)", xlab = "Reported cigarettes per day", ylab = "Birth weight (ounces)")

# Draw family-income boxplots for the two reported-cigarette groups.
boxplot(births$faminc ~ smoker, names = c("Zero", "Positive"), col = c("lightblue", "mistyrose"), main = "Family income (descriptive)", xlab = "Reported cigarettes per day", ylab = "Income (thousands of dollars)")

# Close the PNG file.
dev.off()
