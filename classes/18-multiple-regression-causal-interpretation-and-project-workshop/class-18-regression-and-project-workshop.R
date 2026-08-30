# ECO 202, Class 18
# Multiple regression, causal interpretation, and project workshop.
# Open the Class 18 folder as the working folder before running this script.

# Read the historical wage data from the class-local data folder.
wage_data <- read.csv("data/wage1.csv")

# Display the first six wage-analysis variables.
head(wage_data[c("wage", "educ", "exper", "tenure")])

# Count rows missing any variable needed for the wage specifications.
wage_missing <- sum(!complete.cases(wage_data[c("wage", "educ", "exper", "tenure")]))

# Print the wage missing-value check.
cat("Wage rows with missing required values:", wage_missing, "\n")

# Keep rows with complete wage-analysis variables.
wage_complete <- complete.cases(wage_data[c("wage", "educ", "exper", "tenure")])

# Keep the complete wage-analysis rows.
wage_analysis <- wage_data[wage_complete, ]

# Fit wage on education only.
wage_simple_model <- lm(wage ~ educ, data = wage_analysis)

# Fit wage on education, experience, and tenure.
wage_adjusted_model <- lm(wage ~ educ + exper + tenure, data = wage_analysis)

# Extract the education coefficient from the simple wage model.
wage_simple_education <- coef(wage_simple_model)["educ"]

# Extract the education coefficient from the adjusted wage model.
wage_adjusted_education <- coef(wage_adjusted_model)["educ"]

# Extract the experience coefficient from the adjusted wage model.
wage_adjusted_experience <- coef(wage_adjusted_model)["exper"]

# Extract the tenure coefficient from the adjusted wage model.
wage_adjusted_tenure <- coef(wage_adjusted_model)["tenure"]

# Print the two education coefficients.
cat("Education coefficient, simple wage model:", wage_simple_education, "\n")

# Print the adjusted education, experience, and tenure coefficients.
cat("Adjusted wage coefficients -- education:", wage_adjusted_education, " experience:", wage_adjusted_experience, " tenure:", wage_adjusted_tenure, "\n")

# Read the randomized job-training data from the class-local data folder.
training_data <- read.csv("data/jtrain2.csv")

# Display the first six training-analysis variables.
head(training_data[c("re78", "train", "re74", "re75")])

# Count rows missing any variable needed for the training specifications.
training_missing <- sum(!complete.cases(training_data[c("re78", "train", "re74", "re75")]))

# Print the training missing-value check.
cat("Training rows with missing required values:", training_missing, "\n")

# Keep rows with complete training-analysis variables.
training_complete <- complete.cases(training_data[c("re78", "train", "re74", "re75")])

# Keep the complete training-analysis rows.
training_analysis <- training_data[training_complete, ]

# Fit 1978 earnings on randomized training assignment only.
training_simple_model <- lm(re78 ~ train, data = training_analysis)

# Fit 1978 earnings on assignment and two pre-assignment earnings measures.
training_adjusted_model <- lm(re78 ~ train + re74 + re75, data = training_analysis)

# Extract the assignment coefficient from the simple training model.
training_simple_assignment <- coef(training_simple_model)["train"]

# Extract the assignment coefficient from the adjusted training model.
training_adjusted_assignment <- coef(training_adjusted_model)["train"]

# Extract the 1974 earnings coefficient from the adjusted training model.
training_adjusted_re74 <- coef(training_adjusted_model)["re74"]

# Extract the 1975 earnings coefficient from the adjusted training model.
training_adjusted_re75 <- coef(training_adjusted_model)["re75"]

# Calculate the job-training-group mean in 1978 earnings.
training_assigned_mean <- mean(training_analysis$re78[training_analysis$train == 1])

# Calculate the control-group mean in 1978 earnings.
training_control_mean <- mean(training_analysis$re78[training_analysis$train == 0])

# Calculate the direct difference in assigned-group means.
training_direct_difference <- training_assigned_mean - training_control_mean

# Print the direct difference and simple-regression assignment coefficient.
cat("Training mean difference:", training_direct_difference, " simple coefficient:", training_simple_assignment, "\n")

# Print the adjusted assignment and pre-assignment earnings coefficients.
cat("Adjusted training coefficients -- assignment:", training_adjusted_assignment, " re74:", training_adjusted_re74, " re75:", training_adjusted_re75, "\n")

# Store the two wage coefficients for plotting.
wage_coefficients <- c(wage_simple_education, wage_adjusted_education)

# Store the two training coefficients for plotting.
training_coefficients <- c(training_simple_assignment, training_adjusted_assignment)

# Open a PNG file for the two specification comparisons.
png("figures/simple-and-adjusted-regression-coefficients.png", width = 1450, height = 760, res = 140)

# Arrange the wage and training coefficient comparisons side by side.
par(mfrow = c(1, 2), mar = c(6, 5, 4, 2))

# Plot the simple and adjusted education coefficients.
plot(c(1, 2), wage_coefficients, pch = 19, cex = 2, col = c("#3182bd", "#e6550d"), xaxt = "n", xlim = c(0.65, 2.35), ylim = c(0, 0.75), xlab = "", ylab = "Education coefficient\n(1976 dollars per hour per education year)", main = "Observational wage comparison")

# Label the wage specifications on the horizontal axis.
axis(1, at = c(1, 2), labels = c("Education\nonly", "Add experience\nand tenure"))

# Connect the wage coefficients to emphasize the specification change.
segments(1, wage_simple_education, 2, wage_adjusted_education, lwd = 3, col = "#737373")

# Label the simple wage coefficient.
text(1, wage_simple_education, labels = sprintf("%.4f", wage_simple_education), pos = 3)

# Label the adjusted wage coefficient.
text(2, wage_adjusted_education, labels = sprintf("%.4f", wage_adjusted_education), pos = 3)

# Plot the simple and adjusted job-training assignment coefficients.
plot(c(1, 2), training_coefficients, pch = 19, cex = 2, col = c("#3182bd", "#e6550d"), xaxt = "n", xlim = c(0.65, 2.35), ylim = c(0, 2.2), xlab = "", ylab = "Assignment coefficient\n(thousands of 1982 dollars)", main = "Randomized assignment comparison")

# Label the job-training specifications on the horizontal axis.
axis(1, at = c(1, 2), labels = c("Assignment\nonly", "Add 1974 and 1975\nearnings"))

# Connect the training coefficients to emphasize the specification change.
segments(1, training_simple_assignment, 2, training_adjusted_assignment, lwd = 3, col = "#737373")

# Label the simple assignment coefficient.
text(1, training_simple_assignment, labels = sprintf("%.4f", training_simple_assignment), pos = 3)

# Label the adjusted assignment coefficient.
text(2, training_adjusted_assignment, labels = sprintf("%.4f", training_adjusted_assignment), pos = 3)

# Close the PNG graphics device and save the figure.
dev.off()
