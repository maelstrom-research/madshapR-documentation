library(madshapR)
# usethis::use_pkgdown()

# devtools::document(roclets = c('rd', 'collate', 'namespace', 'vignette'))
# devtools::build_readme()
# devtools::build_rmd('NEWS.Rmd')
# devtools::build_rmd('XXX.Rmd')
fs::dir_delete("docs")
pkgdown::build_site()

# replace ligne 138
file.edit("docs/index.html")
<li><a href="authors.html#authors">Citing madshapR</a></li>
  
  

# replace ligne 57
file.edit("docs/authors.html")
<h1 id="authors">Authors</h1>
  
# insert after ligne 70
file.edit("docs/authors.html")
  <div class="section level2 aknowledgment-section">
  <div>
  <h1 id="aknowledgment">Acknowledgment</h1>
  
  
  We extend our heartfelt appreciation to all the members of the
Maelstrom Research team and our valued partners who have played a role in
making this project possible. 

<br><br>
  Special thanks go to

<strong>Zishu Chen</strong>,
<strong>Samuel El-Bouzaidi Tiali</strong>,
<strong>Ramin Haeri Azad</strong>, 
<strong>Anouar Nechba</strong>,
<strong>Alexandre Trottier</strong>,
<strong>Tina Wey</strong>,
<strong>Rita Wissa</strong>,and
all of your github beta-testers for their contributions to the documentation 
of the package, input in aligning the package with scientific guidelines and 
Maelstrom standards and for their dedicated efforts in testing the package and 
providing insightful enhancements.

<br><br>
  
  Thank you for your outstanding contributions.
<br><br>
  
  </div>
  </div>
  <div class="section level2 citation-section">
  
# change from lines 95 for imports from fabR  
file.edit("../madshapR/docs/reference/index.html")
# file.edit("../Rmonize-documentation/docs/reference/index.html")

       <tr><td>
           <p><code><a href="https://guifabre.github.io/fabR-documentation/reference/bookdown_open.html" class="external-link">bookdown_open()</a></code> </p>
         </td>
         <td><p>Open a a web-based bookdown folder in a browser</p></td>
      </tr>
      
       <tr><td>
           <p><code><a href="https://guifabre.github.io/fabR-documentation/reference/bookdown_render.html" class="external-link">bookdown_render()</a></code> </p>
         </td>
         <td><p>Render a bookdown into a bookdown site</p></td>
      </tr>
      
       <tr><td>
           <p><code><a href="https://guifabre.github.io/fabR-documentation/reference/bookdown_template.html" class="external-link">bookdown_template()</a></code> </p>
         </td>
         <td><p>Create a bookdown template</p></td>
      </tr>


fs::dir_delete("../madshapR-documentation/docs")
fs::dir_copy(
  "../madshapR/docs",
  "../madshapR-documentation/docs",
  overwrite = TRUE)


# switch to madshapR-documentation
# push to git
'update documentation following latest version of the package'

browseURL("https://github.com/maelstrom-research/madshapR-documentation/actions/")
madshapR_website()
