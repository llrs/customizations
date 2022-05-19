if (interactive()) {
    suppressPackageStartupMessages(library("devtools")) # Develop packages
    suppressPackageStartupMessages(library("usethis")) # Develop packages
    suppressPackageStartupMessages(library("testthat")) # Develop packages
    suppressPackageStartupMessages(library("cyclocomp")) # Develop packages
    suppressPackageStartupMessages(library("conflicted")) # Develop packages
    suppressPackageStartupMessages(library("covrpage")) # Develop packages
  }

options(usethis.full_name = "Lluís Revilla Sancho",  # For package creation
        Ncpus = 4,
       max.print = 100,
          usethis.protocol = "ssh",
          useFancyQuotes = FALSE,
          max.print = 100,
          usethis.description = list(
            "Authors@R" = utils::person(
              "Lluís", "Revilla Sancho",
              email = "lluis.revilla@gmail.com",
              role = c("aut", "cre"),
              comment = c(ORCID = "0000-0001-9747-2570")
            ),
            License = "MIT + file LICENSE",
            Version = "0.0.0.9000"),
          servr.daemon = TRUE,
          usethis.destdir = "~/Documents/projects/",
          warnPartialMatchArgs = TRUE,
          warnPartialMatchDollar = TRUE,
          warnPartialMatchAttr = TRUE
#          CRAN_mirror = "https://packagemanager.rstudio.com/cran/__linux__/focal/latest",
#          BioC_mirror = "https://packagemanager.rstudio.com/bioconductor"
        setWidthOnResize = TRUE # https://twitter.com/henrikbengtsson/status/1460367104079663106?s=20
          )) # Faster updates/installation of packages

# For when running scipts from command line store the session_info in the Rout file
.Last <- function() {
  print(devtools::session_info())
}
