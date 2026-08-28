#import "../../presentation.typ": *

#slide(title: "Motivation and objectives", [
  == Motivation
  - Present technical work with a formal HCMUT visual identity.
  - Keep slide content independent from the reusable theme.
  - Make common academic elements easy to reuse.

  #callout("Objective", [Build a clean, readable presentation that compiles with one Typst command.])
])

#slide(title: "Example figure", [
  #figure(
    rect(width: 80%, height: 32mm, fill: bk-light, stroke: 1pt + bk-blue, radius: 5pt)[
      #align(center + horizon)[#text(size: 20pt, fill: bk-dark)[Insert your figure here]]
    ],
    caption: [A figure placeholder with a native Typst caption.],
  ) <fig:example>
])
