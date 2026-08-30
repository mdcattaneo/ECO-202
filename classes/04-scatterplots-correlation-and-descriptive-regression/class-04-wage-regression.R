# ECO 202, Class 4
# Correlation and descriptive regression for education and hourly wage.
# Open the Class 4 folder as the working folder before running this script.

# Read the wage data from the data subfolder.
wage1 <- read.csv("data/wage1.csv")

# Display the first six rows of education and hourly wage.
head(wage1[c("educ", "wage")])

# Keep rows with observed education and hourly wage.
complete_rows <- !is.na(wage1$educ) & !is.na(wage1$wage)

# Restrict the data to the complete rows.
wage_data <- wage1[complete_rows, ]

# Select completed education as x.
x <- wage_data$educ

# Select hourly wage as y.
y <- wage_data$wage

# Count the workers used in the calculation.
number_workers <- length(x)

# Calculate the mean of education.
mean_x <- mean(x)

# Calculate the mean of hourly wage.
mean_y <- mean(y)

# Calculate the sample standard deviation of education.
sd_x <- sd(x)

# Calculate the sample standard deviation of hourly wage.
sd_y <- sd(y)

# Calculate the sample correlation.
correlation <- cor(x, y)

# Calculate the fitted slope from correlation and the two standard deviations.
slope <- correlation * sd_y / sd_x

# Calculate the fitted intercept from the two sample means.
intercept <- mean_y - slope * mean_x

# Calculate each fitted hourly wage.
fitted_wage <- intercept + slope * x

# Calculate each residual.
residual <- y - fitted_wage

# Calculate the descriptive r-squared.
r_squared <- 1 - sum(residual^2) / sum((y - mean_y)^2)

# Calculate the fitted wage at 12 years of education.
fitted_wage_12 <- intercept + slope * 12

# Fit the same descriptive line with R's linear-model command.
wage_line <- lm(y ~ x)

# Print the number of workers.
cat("Workers:", number_workers, "\n")

# Print the means and standard deviations.
cat("Mean education:", mean_x, " SD education:", sd_x, " Mean wage:", mean_y, " SD wage:", sd_y, "\n")

# Print the correlation.
cat("Correlation:", correlation, "\n")

# Print the manually calculated intercept and slope.
cat("Intercept:", intercept, " Slope:", slope, "\n")

# Print R's intercept and slope as a check.
print(coef(wage_line))

# Print r-squared and the fitted wage at 12 years of education.
cat("R-squared:", r_squared, " Fitted wage at 12 years:", fitted_wage_12, "\n")

# Print the sum of the residuals as a check.
cat("Sum of residuals:", sum(residual), "\n")

# Open a PNG file for the two graphs.
png("figures/education-wage-regression.png", width = 1400, height = 650, res = 150)

# Divide the plotting area into one row and two columns.
par(mfrow = c(1, 2))

# Draw the education-wage scatterplot.
plot(x, y, pch = 16, col = "steelblue", main = "Education and hourly wage", xlab = "Completed education (years)", ylab = "Hourly wage (1976 dollars)")

# Add the fitted line.
abline(a = intercept, b = slope, col = "firebrick", lwd = 3)

# Draw the residual plot.
plot(x, residual, pch = 16, col = "steelblue", main = "Residuals from the fitted line", xlab = "Completed education (years)", ylab = "Observed minus fitted wage")

# Add the horizontal zero line.
abline(h = 0, col = "firebrick", lwd = 2, lty = 2)

# Close the PNG file.
dev.off()
