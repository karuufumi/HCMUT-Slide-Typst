#import "presentation.typ": *
#import "content/front-matter.typ": front-matter

#front-matter()
#agenda(("Motivation and objectives", "Methodology", "Results and discussion", "Conclusion"))

#include "content/sections/01-introduction.typ"
#include "content/sections/02-methodology.typ"
#include "content/sections/03-results.typ"
#include "content/sections/04-conclusion.typ"

#slide(title: "References", [
  #bibliography("references.bib", style: "ieee")
])
