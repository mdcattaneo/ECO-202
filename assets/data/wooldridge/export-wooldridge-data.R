# Rebuild the shared ECO 202 CSV files from the pinned Wooldridge data package.

required_version <- package_version("1.4-7")

if (!requireNamespace("wooldridge", quietly = TRUE)) {
  stop(
    "Package 'wooldridge' is not installed. Install version 1.4-7 before running this script.",
    call. = FALSE
  )
}

installed_version <- packageVersion("wooldridge")
if (installed_version != required_version) {
  stop(
    sprintf(
      "Expected wooldridge %s but found %s. Refusing to change the frozen course data.",
      required_version,
      installed_version
    ),
    call. = FALSE
  )
}

script_argument <- grep("^--file=", commandArgs(trailingOnly = FALSE), value = TRUE)
if (length(script_argument) != 1L) {
  stop("Run this file with Rscript so its output directory can be located.", call. = FALSE)
}

script_path <- normalizePath(sub("^--file=", "", script_argument), mustWork = TRUE)
output_directory <- dirname(script_path)

expected_columns <- list(
  wage1 = c(
    "wage", "educ", "exper", "tenure", "nonwhite", "female", "married",
    "numdep", "smsa", "northcen", "south", "west", "construc", "ndurman",
    "trcommpu", "trade", "services", "profserv", "profocc", "clerocc",
    "servocc", "lwage", "expersq", "tenursq"
  ),
  bwght = c(
    "faminc", "cigtax", "cigprice", "bwght", "fatheduc", "motheduc",
    "parity", "male", "white", "cigs", "lbwght", "bwghtlbs", "packs",
    "lfaminc"
  ),
  gpa1 = c(
    "age", "soph", "junior", "senior", "senior5", "male", "campus",
    "business", "engineer", "colGPA", "hsGPA", "ACT", "job19", "job20",
    "drive", "bike", "walk", "voluntr", "PC", "greek", "car", "siblings",
    "bgfriend", "clubs", "skipped", "alcohol", "gradMI", "fathcoll",
    "mothcoll"
  ),
  jtrain2 = c(
    "train", "age", "educ", "black", "hisp", "married", "nodegree",
    "mosinex", "re74", "re75", "re78", "unem74", "unem75", "unem78",
    "lre74", "lre75", "lre78", "agesq", "mostrn"
  )
)

expected_rows <- c(wage1 = 526L, bwght = 1388L, gpa1 = 141L, jtrain2 = 445L)

for (dataset_name in names(expected_columns)) {
  data_environment <- new.env(parent = emptyenv())
  data(list = dataset_name, package = "wooldridge", envir = data_environment)
  dataset <- data_environment[[dataset_name]]

  if (!is.data.frame(dataset)) {
    stop(sprintf("%s did not load as a data frame.", dataset_name), call. = FALSE)
  }
  if (nrow(dataset) != expected_rows[[dataset_name]]) {
    stop(sprintf("%s has an unexpected number of rows.", dataset_name), call. = FALSE)
  }
  if (!identical(names(dataset), expected_columns[[dataset_name]])) {
    stop(sprintf("%s has unexpected columns or column order.", dataset_name), call. = FALSE)
  }

  output_path <- file.path(output_directory, paste0(dataset_name, ".csv"))
  write.csv(dataset, output_path, row.names = FALSE, na = "")
  message(sprintf("Wrote %s (%d rows x %d columns)", output_path, nrow(dataset), ncol(dataset)))
}
