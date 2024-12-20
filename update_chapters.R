# Load required library
library(yaml)

# Read the current _quarto.yml
quarto_config <- yaml::read_yaml("_quarto.yml")

# List .qmd files in the src folder
qmd_files <- list.files("src", pattern = "\\.qmd$", full.names = TRUE)

# Sort files numerically
qmd_files <- qmd_files[order(qmd_files)]

# Update chapters field
quarto_config$book$chapters <- c("index.qmd", qmd_files)

# Write back to _quarto.yml
yaml::write_yaml(quarto_config, "_quarto.yml")
