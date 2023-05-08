library(madshapR)
library(fs)
# usethis::use_pkgdown()

devtools::document(roclets = c('rd', 'collate', 'namespace', 'vignette'))
pkgdown::build_site()

fs::dir_copy(
  "docs",
  "../madshapR-documentation/docs",
  overwrite = TRUE
)

harmonizR::harmonizR_help()
