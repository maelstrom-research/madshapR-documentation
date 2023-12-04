library(madshapR)
# usethis::use_pkgdown()

devtools::document(roclets = c('rd', 'collate', 'namespace', 'vignette'))
devtools::build_readme()
devtools::build_rmd('NEWS.Rmd')

fs::dir_delete("docs")
pkgdown::build_site()

fs::dir_delete("../madshapR-documentation/docs")
fs::dir_copy(
  "docs",
  "../madshapR-documentation/docs",
  overwrite = TRUE)

# switch to madshapR-documentation
# push to git

'update documentation following latest version of the package'

"https://github.com/maelstrom-research/madshapR-documentation/actions/"
madshapR_help()
