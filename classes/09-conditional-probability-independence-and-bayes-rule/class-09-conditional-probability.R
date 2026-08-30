# ECO 202, Class 9
# Conditional probability, independence, total probability, and Bayes' rule.
# Open the Class 9 folder as the working folder before running this script.

# Read the historical birth-weight data from the class-local data folder.
births <- read.csv("data/bwght.csv")

# Display the first six rows of the variables used in this class.
head(births[c("bwght", "cigs")])

# Identify rows with recorded birth weight and reported cigarette consumption.
complete_rows <- !is.na(births$bwght) & !is.na(births$cigs)

# Keep only rows with both variables recorded.
births <- births[complete_rows, ]

# Define the event S as positive reported cigarettes per day.
positive_cigarettes <- births$cigs > 0

# Define the event L as recorded birth weight below 88 ounces.
low_birth_weight <- births$bwght < 88

# Count records with zero reported cigarettes and birth weight at least 88 ounces.
count_zero_not_low <- sum(!positive_cigarettes & !low_birth_weight)

# Count records with zero reported cigarettes and birth weight below 88 ounces.
count_zero_low <- sum(!positive_cigarettes & low_birth_weight)

# Count records with positive reported cigarettes and birth weight at least 88 ounces.
count_positive_not_low <- sum(positive_cigarettes & !low_birth_weight)

# Count records with positive reported cigarettes and birth weight below 88 ounces.
count_positive_low <- sum(positive_cigarettes & low_birth_weight)

# Assemble the four joint counts into a labeled table.
joint_counts <- matrix(c(count_zero_not_low, count_positive_not_low, count_zero_low, count_positive_low), nrow = 2, ncol = 2)

# Label the rows of the joint-count table.
rownames(joint_counts) <- c("Zero reported cigarettes", "Positive reported cigarettes")

# Label the columns of the joint-count table.
colnames(joint_counts) <- c("Not low birth weight", "Low birth weight")

# Print the joint counts with marginal totals.
print(addmargins(joint_counts))

# Count all complete birth records in the probability experiment.
number_births <- nrow(births)

# Calculate the marginal probability of positive reported cigarettes.
probability_positive <- sum(positive_cigarettes) / number_births

# Calculate the marginal probability of low birth weight.
probability_low <- sum(low_birth_weight) / number_births

# Calculate the joint probability of positive cigarettes and low birth weight.
probability_positive_and_low <- sum(positive_cigarettes & low_birth_weight) / number_births

# Calculate low-birth-weight probability conditional on positive reported cigarettes.
probability_low_given_positive <- sum(positive_cigarettes & low_birth_weight) / sum(positive_cigarettes)

# Calculate positive-cigarette probability conditional on low birth weight.
probability_positive_given_low <- sum(positive_cigarettes & low_birth_weight) / sum(low_birth_weight)

# Calculate the product of the two marginal probabilities for an independence check.
independence_product <- probability_positive * probability_low

# Calculate low-birth-weight probability conditional on zero reported cigarettes.
probability_low_given_zero <- sum(!positive_cigarettes & low_birth_weight) / sum(!positive_cigarettes)

# Reconstruct the low-birth-weight probability by total probability.
total_probability_low <- probability_low_given_positive * probability_positive + probability_low_given_zero * (1 - probability_positive)

# Print the marginal, joint, conditional, and independence-check probabilities.
cat("Probability of S:", probability_positive, " Probability of L:", probability_low, " Probability of S and L:", probability_positive_and_low, "\n")

# Print the forward and reverse conditional probabilities.
cat("Probability of L given S:", probability_low_given_positive, " Probability of S given L:", probability_positive_given_low, "\n")

# Print the product check and total-probability reconstruction.
cat("Product of marginal probabilities:", independence_product, " Total-probability result for L:", total_probability_low, "\n")

# Set the number of items in the newly authored quality-control example.
number_items <- 10000

# Set the defect base rate in the teaching example.
defect_rate <- 0.01

# Set the alert sensitivity in the teaching example.
alert_sensitivity <- 0.90

# Set the false-positive rate in the teaching example.
false_positive_rate <- 0.04

# Calculate the number of defective items.
defective_items <- number_items * defect_rate

# Calculate the number of nondefective items.
nondefective_items <- number_items - defective_items

# Calculate true alerts among defective items.
true_alerts <- defective_items * alert_sensitivity

# Calculate false alerts among nondefective items.
false_alerts <- nondefective_items * false_positive_rate

# Calculate all alerts.
all_alerts <- true_alerts + false_alerts

# Calculate the probability of a defect conditional on an alert.
probability_defective_given_alert <- true_alerts / all_alerts

# Print the natural-frequency counts and the Bayes result.
cat("Defective items:", defective_items, " True alerts:", true_alerts, " False alerts:", false_alerts, " All alerts:", all_alerts, "\n")

# Print the posterior probability after an alert.
cat("Probability of defective given alert:", probability_defective_given_alert, "\n")
