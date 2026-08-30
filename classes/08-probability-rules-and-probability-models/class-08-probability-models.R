# ECO 202, Class 8
# Finite probability models, event rules, and simulation checks.
# Open the Class 8 folder as the working folder before running this script.

# Read the historical wage data from the local data subfolder.
wage1 <- read.csv("data/wage1.csv")

# Display the first six rows of the variables used in this class.
head(wage1[c("wage", "educ")])

# Check that the local file contains the expected number of workers.
stopifnot(nrow(wage1) == 526)

# Check that hourly wage has no missing values.
stopifnot(!any(is.na(wage1$wage)))

# Check that education has no missing values.
stopifnot(!any(is.na(wage1$educ)))

# Define event E as at least 12 years of education.
education_event <- wage1$educ >= 12

# Define event H as an hourly wage of at least 6 dollars.
high_wage_event <- wage1$wage >= 6

# Count the number of workers in event E.
education_count <- sum(education_event)

# Count the number of workers in event H.
high_wage_count <- sum(high_wage_event)

# Count the number of workers in both E and H.
intersection_count <- sum(education_event & high_wage_event)

# Count the number of workers in E or H, including workers in both.
union_count <- sum(education_event | high_wage_event)

# Count the number of workers in neither E nor H.
neither_count <- sum(!education_event & !high_wage_event)

# Verify the education-event count used in the guide.
stopifnot(education_count == 410)

# Verify the high-wage-event count used in the guide.
stopifnot(high_wage_count == 197)

# Verify the intersection count used in the guide.
stopifnot(intersection_count == 183)

# Verify the union count used in the guide.
stopifnot(union_count == 424)

# Verify the neither-event count used in the guide.
stopifnot(neither_count == 102)

# Record the number of equally likely rows in the finite teaching model.
number_workers <- nrow(wage1)

# Calculate the exact probability of event E under uniform row selection.
education_probability <- education_count / number_workers

# Calculate the exact probability of event H under uniform row selection.
high_wage_probability <- high_wage_count / number_workers

# Calculate the exact probability of the intersection.
intersection_probability <- intersection_count / number_workers

# Calculate the exact probability of the union.
union_probability <- union_count / number_workers

# Calculate the exact probability of neither event.
neither_probability <- neither_count / number_workers

# Calculate the union probability again with the addition rule.
addition_rule_probability <- education_probability + high_wage_probability - intersection_probability

# Calculate the neither probability again with the complement rule.
complement_rule_probability <- 1 - union_probability

# Verify the addition-rule calculation.
stopifnot(abs(union_probability - addition_rule_probability) < 0.000000000001)

# Verify the complement-rule calculation.
stopifnot(abs(neither_probability - complement_rule_probability) < 0.000000000001)

# Print the exact event counts.
cat("E count:", education_count, " H count:", high_wage_count, " Intersection:", intersection_count, " Union:", union_count, " Neither:", neither_count, "\n")

# Print the exact event probabilities.
cat("Probability of E:", education_probability, " Probability of H:", high_wage_probability, " Probability of E and H:", intersection_probability, " Probability of E or H:", union_probability, " Probability of neither:", neither_probability, "\n")

# Fix the random seed so the simulation can be reproduced.
set.seed(202608)

# Set the number of repeated uniform row selections.
number_simulations <- 20000

# Make uniform row selections with replacement.
drawn_rows <- sample(1:number_workers, size = number_simulations, replace = TRUE)

# Record event E for every simulated row selection.
simulated_education <- education_event[drawn_rows]

# Record event H for every simulated row selection.
simulated_high_wage <- high_wage_event[drawn_rows]

# Record the intersection for every simulated row selection.
simulated_intersection <- simulated_education & simulated_high_wage

# Record the E-and-H cell for every simulated row selection.
simulated_education_high <- simulated_education & simulated_high_wage

# Record the E-and-not-H cell for every simulated row selection.
simulated_education_not_high <- simulated_education & !simulated_high_wage

# Record the not-E-and-H cell for every simulated row selection.
simulated_not_education_high <- !simulated_education & simulated_high_wage

# Record the neither-event cell for every simulated row selection.
simulated_neither <- !simulated_education & !simulated_high_wage

# Calculate cumulative simulated frequencies for event E.
cumulative_education <- cumsum(simulated_education) / 1:number_simulations

# Calculate cumulative simulated frequencies for event H.
cumulative_high_wage <- cumsum(simulated_high_wage) / 1:number_simulations

# Calculate cumulative simulated frequencies for the intersection.
cumulative_intersection <- cumsum(simulated_intersection) / 1:number_simulations

# Calculate the exact probabilities of the four exhaustive event cells.
exact_cell_probabilities <- c(183, 227, 14, 102) / number_workers

# Calculate the simulated frequencies of the four exhaustive event cells.
simulated_cell_probabilities <- c(mean(simulated_education_high), mean(simulated_education_not_high), mean(simulated_not_education_high), mean(simulated_neither))

# Give the four event cells short labels for the figure.
cell_labels <- c("E and H", "E and not H", "not E and H", "neither")

# Combine exact and simulated cell probabilities for a side-by-side plot.
cell_probability_comparison <- rbind(exact_cell_probabilities, simulated_cell_probabilities)

# Add descriptive column names to the printed comparison.
colnames(cell_probability_comparison) <- cell_labels

# Print the simulated event frequencies.
cat("Simulated probability of E:", mean(simulated_education), " Simulated probability of H:", mean(simulated_high_wage), " Simulated probability of E and H:", mean(simulated_intersection), "\n")

# Print the exact and simulated probabilities for the four exhaustive cells.
print(cell_probability_comparison)

# Open a PNG file for the reproducible simulation figure.
png("figures/wage-event-probability-check.png", width = 1500, height = 700, res = 150)

# Divide the plotting area into two panels.
par(mfrow = c(1, 2))

# Set readable margins for the cumulative-frequency panel.
par(mar = c(5, 4.5, 3, 1))

# Plot the cumulative simulated frequency of event E.
plot(1:number_simulations, cumulative_education, type = "l", col = "#2166ac", lwd = 2, ylim = c(0, 1), xlab = "Number of simulated row selections", ylab = "Cumulative relative frequency", main = "Simulation approaches exact probabilities")

# Add the cumulative simulated frequency of event H.
lines(1:number_simulations, cumulative_high_wage, col = "#b2182b", lwd = 2)

# Add the cumulative simulated frequency of the intersection.
lines(1:number_simulations, cumulative_intersection, col = "#4d9221", lwd = 2)

# Add a horizontal line for the exact probability of event E.
abline(h = education_probability, col = "#2166ac", lty = 2)

# Add a horizontal line for the exact probability of event H.
abline(h = high_wage_probability, col = "#b2182b", lty = 2)

# Add a horizontal line for the exact intersection probability.
abline(h = intersection_probability, col = "#4d9221", lty = 2)

# Add a legend that identifies the three events.
legend("right", legend = c("E", "H", "E and H"), col = c("#2166ac", "#b2182b", "#4d9221"), lwd = 2, bty = "n")

# Add extra bottom margin for the longer event-cell labels.
par(mar = c(8, 4.5, 3, 1))

# Draw exact and simulated probabilities for the four exhaustive cells.
barplot(cell_probability_comparison, beside = TRUE, names.arg = cell_labels, col = c("gray35", "skyblue3"), ylim = c(0, 0.5), las = 2, ylab = "Probability or relative frequency", main = "Four exhaustive event cells")

# Add a legend for exact and simulated values.
legend("topright", legend = c("Exact", "Simulated"), fill = c("gray35", "skyblue3"), bty = "n")

# Close the PNG file.
dev.off()
