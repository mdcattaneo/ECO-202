# ECO 202, Class 1
# A first reproducible R analysis using real historical data.
# Open the Class 1 folder as the working folder before running this script.
# The data are observational and do not by themselves identify causal effects.

# Read the wage data from the data subfolder.
workers <- read.csv("data/wage1.csv")

# Display the first six rows of the variables used in this demonstration.
head(workers[c("wage", "educ", "exper", "tenure")])

# Display all variable names.
names(workers)

# Count all missing values in the data.
missing_values <- sum(is.na(workers))

# Count the number of workers.
number_workers <- nrow(workers)

# Select hourly wage in 1976 dollars.
wages <- workers$wage

# Add all hourly wages.
total_wage <- sum(wages)

# Calculate the mean hourly wage with R's mean command.
mean_wage <- mean(wages)

# Check the mean by dividing the total by the number of workers.
mean_wage_check <- total_wage / number_workers

# Calculate the median hourly wage.
median_wage <- median(wages)

# Calculate the sample correlation between education and hourly wage.
education_wage_correlation <- cor(workers$educ, workers$wage)

# Fit a descriptive line relating hourly wage to years of education.
wage_line <- lm(wage ~ educ, data = workers)

# Print the missing-value count.
cat("Missing values:", missing_values, "\n")

# Print the number of workers.
cat("Number of workers:", number_workers, "\n")

# Print the total hourly wage.
cat("Sum of hourly wages:", total_wage, "\n")

# Print the mean hourly wage.
cat("Mean hourly wage:", mean_wage, "\n")

# Print the independent check of the mean.
cat("Mean check:", mean_wage_check, "\n")

# Print the median hourly wage.
cat("Median hourly wage:", median_wage, "\n")

# Print the sample correlation.
cat("Education-wage correlation:", education_wage_correlation, "\n")

# Print the intercept and slope of the descriptive line.
print(coef(wage_line))

# Open a PNG file for the scatterplot.
png("figures/education-wage-scatter.png", width = 960, height = 640, res = 120)

# Draw hourly wage against years of education.
plot(workers$educ, workers$wage, pch = 16, col = "steelblue", xlab = "Completed education (years)", ylab = "Hourly wage (1976 dollars)", main = "Historical wage1 data: education and hourly wage")

# Add the fitted descriptive line.
abline(wage_line, col = "firebrick", lwd = 2)

# Close the PNG file.
dev.off()

# Remind the reader of the interpretation boundary.
cat("This historical sample shows an association, not a causal effect.\n")
