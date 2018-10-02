if (interactive()) {
    suppressPackageStartupMessages(library("devtools")) # Develop packages
    suppressPackageStartupMessages(library("usethis")) # Develop packages
    suppressPackageStartupMessages(library("testthat")) # Develop packages
    suppressPackageStartupMessages(library("cyclocomp")) # Develop packages
    suppressPackageStartupMessages(library("conflicted")) # Develop packages
    suppressPackageStartupMessages(library("covrpage")) # Develop packages
  }

options(usethis.full_name = "Lluís Revilla Sancho",  # For package creation
        Ncpus = 4) # Faster updates/installation of packages

# For when running scipts from command line store the session_info in the Rout file
.Last <- function() {
  print(devtools::session_info())
}
