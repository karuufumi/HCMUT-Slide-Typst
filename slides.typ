#import "presentation.typ": *
#import "content/front-matter.typ": front-matter

#set text(font: "Times New Roman", size: 22pt, fill: ink)

#front-matter()
#meta-information()
#agenda(("Motivation and objectives", "Methodology", "Results and discussion", "Conclusion"))

#section-contents(1, "Motivation and objectives", ("Motivation", "Objectives"))
#include "content/sections/01-introduction.typ"
#section-contents(2, "Methodology", ("Workflow", "Equations and citations"))
#include "content/sections/02-methodology.typ"
#section-contents(3, "Results and discussion", ("Results",))
#include "content/sections/03-results.typ"
#section-contents(4, "Conclusion", ("Takeaway",))
#include "content/sections/04-conclusion.typ"

#slide(title: "References", [
  #bibliography("references.bib", title: none, style: "ieee")
])
