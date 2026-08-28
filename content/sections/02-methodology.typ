#import "../../presentation.typ": *

#slide(title: "Methodology", [
  *Workflow*
  #enum(
    [Define the problem and constraints.],
    [Design the solution and evaluation method.],
    [Measure results and discuss limitations.],
  )

  #v(5mm)
  #table(
    columns: (1fr, 1fr, 1fr),
    inset: 8pt,
    fill: (x, y) => if y == 0 { bk-dark } else { panel },
    table.header(
      text(fill: white)[*Stage*],
      text(fill: white)[*Input*],
      text(fill: white)[*Output*],
    ),
    [Planning], [Requirements], [Experiment design],
    [Execution], [Data], [Measurements],
    [Analysis], [Measurements], [Findings],
  )
])

#slide(title: "Equations and citations", [
  The objective can be expressed as
  #align(center)[$ f(x) = sum_(i=1)^n w_i x_i $]

  A bibliography entry can be cited directly with @knuth1984; Typst reads
  the BibTeX file without a separate BibTeX or Biber command.
  #v(4mm)
  #text(fill: muted, size: 10pt)[Example citation key: #raw("@knuth1984")]
])
