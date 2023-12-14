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

file.edit("docs/authors.html")

# apres la ligne 70

<div class="section level2 aknowledgment-section">
  <div>
  <h1 id="citation">Acknowledgment</h1>
  
  
  We extend our heartfelt appreciation to all the members of the Maelstrom Research 
  team and our valued partners who have played an integral role in making this project 
  possible. Special thanks go to:
  
  <ul><br>
  
  <li><strong>Alexandre Trottier</strong> and <strong>Tina Wey</strong> for 
      their contributions to the documentation of the package.</li>
  <li><strong>Rita Wissa</strong> and <strong>Anouar Nechba</strong> for their  
      input in aligning the package with scientific guidelines and Maelstrom standards.</li>
  <li><strong>Samuel El-Bouzaidi Tiali</strong> and <strong>Zishu Chen</strong> and 
      all of your github beta-testers for their dedicated efforts in testing the package 
      and providing insightful enhancements.</li>
  
  </ul>
  
  Thank you for your outstanding contributions.

</div>
  </div>



# push to git

'update documentation following latest version of the package'

"https://github.com/maelstrom-research/madshapR-documentation/actions/"
madshapR_help()
