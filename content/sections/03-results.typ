#import "../../presentation.typ": *

#slide(title: "Results and discussion", [
  == Results
  #grid(columns: (1fr, 1fr), gutter: 12mm,
    block(fill: bk-light, inset: 10pt, radius: 5pt)[
      *Strengths*#linebreak()
      - Reusable slide primitives
      - Consistent typography
      - Single-command build
    ],
    block(fill: panel, inset: 10pt, radius: 5pt)[
      *Limitations*#linebreak()
      - Replace placeholder figures
      - Confirm fonts on the target machine
      - Adapt content density to the defense
    ],
  )
])
