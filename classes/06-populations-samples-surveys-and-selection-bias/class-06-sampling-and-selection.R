# ECO 202, Class 6
# Sampling designs, sampling variability, and a constructed selection example.
# Open the Class 6 folder as the working folder before running this script.

# Read the historical wage data from the data subfolder.
wage1 <- read.csv("data/wage1.csv")

# Display the first six rows of variables used in this class.
head(wage1[c("wage", "educ", "smsa")])

# Count the records in the file.
number_records <- nrow(wage1)

# Count the variables in the file.
number_variables <- ncol(wage1)

# Count all missing entries in the file.
number_missing_entries <- sum(is.na(wage1))

# Print the file dimensions and missing-entry count.
cat("Records:", number_records, " Variables:", number_variables, " Missing entries:", number_missing_entries, "\n")

# Calculate the mean wage across all records in the file.
mean_wage_all_records <- mean(wage1$wage)

# Mark the records coded as living in a Standard Metropolitan Statistical Area.
in_constructed_frame <- wage1$smsa == 1

# Count the records included in the constructed metropolitan-only frame.
number_in_constructed_frame <- sum(in_constructed_frame)

# Count the records excluded from the constructed metropolitan-only frame.
number_outside_constructed_frame <- sum(!in_constructed_frame)

# Calculate the mean wage among records in the constructed frame.
mean_wage_constructed_frame <- mean(wage1$wage[in_constructed_frame])

# Calculate the mean wage among records outside the constructed frame.
mean_wage_outside_frame <- mean(wage1$wage[!in_constructed_frame])

# Calculate the constructed-frame mean minus the complete-file mean.
constructed_frame_difference <- mean_wage_constructed_frame - mean_wage_all_records

# Print the complete-file mean wage.
cat("Mean wage, all file records:", mean_wage_all_records, "\n")

# Print the constructed-frame record counts.
cat("Records in constructed frame:", number_in_constructed_frame, " Records excluded:", number_outside_constructed_frame, "\n")

# Print the wage means inside and outside the constructed frame.
cat("Mean wage, constructed frame:", mean_wage_constructed_frame, " Mean wage, excluded records:", mean_wage_outside_frame, "\n")

# Print the difference between the constructed-frame and complete-file means.
cat("Constructed-frame mean minus complete-file mean:", constructed_frame_difference, "\n")

# Fix the random-number seed so the two row samples can be reproduced.
set.seed(20260928)

# Draw a simple random sample of 30 row numbers without replacement.
small_srs_rows <- sample(1:number_records, size = 30, replace = FALSE)

# Select wages from the 30 sampled rows.
small_srs_wages <- wage1$wage[small_srs_rows]

# Calculate the mean wage in the sample of 30 rows.
small_srs_mean <- mean(small_srs_wages)

# Draw a separate simple random sample of 200 row numbers without replacement.
large_srs_rows <- sample(1:number_records, size = 200, replace = FALSE)

# Select wages from the 200 sampled rows.
large_srs_wages <- wage1$wage[large_srs_rows]

# Calculate the mean wage in the sample of 200 rows.
large_srs_mean <- mean(large_srs_wages)

# Print the two realized simple-random-sample means.
cat("SRS mean, n = 30:", small_srs_mean, " SRS mean, n = 200:", large_srs_mean, "\n")

# Count the possible samples when four firms are selected by SRS from eight firms.
number_srs_samples <- choose(8, 4)

# Count the possible samples when two of four firms are selected from each of two strata.
number_stratified_samples <- choose(4, 2) * choose(4, 2)

# Calculate each firm's inclusion probability in either teaching design.
firm_inclusion_probability <- 4 / 8

# Print the two design counts and the common inclusion probability.
cat("Possible SRS samples:", number_srs_samples, " Possible stratified samples:", number_stratified_samples, " Inclusion probability:", firm_inclusion_probability, "\n")
