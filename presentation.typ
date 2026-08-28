#let bk-blue = rgb("1488DB")
#let bk-dark = rgb("032B91")
#let bk-light = rgb("EAF4FC")
#let ink = rgb("1F2937")
#let muted = rgb("64748B")
#let panel = rgb("F1F3F5")

#set page(width: 13.333in, height: 7.5in)

#let standard-background() = {
  place(top + left, image("content/images/Background-nologo.pdf", width: 100%, height: 100%))
  place(top + right, pad(right: 8mm, top: 3mm)[
    #grid(columns: (auto, auto), gutter: 3mm,
      image("content/images/vnu.png", height: 13mm),
      image("content/images/Logo_BK.png", height: 13mm),
    )
  ])
  context {
    place(bottom + right, pad(right: 8mm, bottom: 4mm)[
      #text(size: 8pt, fill: bk-blue)[#counter(page).display()]
    ])
  }
}

#let title-page(title: "PERIODIC REPORT", subtitle: "HIGH PERFORMANCE COMPUTING", report-number: "#XX", reporting-period: "25_MMDD - 25_MMDD", supervisor: "YOUR SUPERVISOR", student: "YOUR NAME", logo: "content/images/Logo_BK.png") = {
  set page(width: 13.333in, height: 7.5in, margin: 0pt)
  place(top + left, image("content/images/FrontBackground-nologo.pdf", width: 100%, height: 100%))
  align(center)[
    #v(7mm)
    #grid(columns: (auto, auto), gutter: 5mm,
      image("content/images/vnu.png", height: 18mm),
      image(logo, height: 18mm),
    )
    #v(6mm)
    #text(size: 37pt, weight: "bold", fill: black)[#title]
    #if subtitle != none [#v(3mm); #text(size: 24pt, weight: "bold", fill: black)[#subtitle]]
    #v(9mm)
    #text(size: 22pt, weight: "bold", fill: black)[#report-number]
    #v(6mm)
    #text(size: 14pt, fill: black)[Reporting Period:  #reporting-period]
    #v(5mm)
    #line(length: 52%, stroke: 1pt + black)
    #v(4mm)
    #grid(columns: (auto, auto), column-gutter: 7mm, row-gutter: 1mm,
      text(size: 13pt, fill: black)[Supervisor:], text(size: 13pt, weight: "bold", fill: black)[#supervisor],
      text(size: 13pt, fill: black)[Student:], text(size: 13pt, fill: black)[#student],
    )
  ]
}

#let meta-row(label, value) = grid(columns: (1fr, 1fr), column-gutter: 5mm,
  align(right)[#text(size: 18pt)[#label:]],
  align(left)[#text(size: 18pt, weight: "bold", fill: bk-blue)[#value]],
)

#let meta-information(rows: (("Supervisor email", "email@hcmut.edu.vn"), ("Student email", "email@hcmut.edu.com"), ("Drive Workspace", "Google Drive"), ("Main Sheet", "Google Sheet"), ("Github", "username@github"), ("References Sheet", "Google Sheet"))) = {
  set page(width: 13.333in, height: 7.5in, margin: (top: 15mm, bottom: 14mm, left: 18mm, right: 18mm), background: standard-background())
  pagebreak()
  text(size: 24pt, fill: bk-dark)[Meta Information]
  v(3mm)
  align(center)[
    #rect(fill: panel, radius: 18pt, inset: 15mm, width: 90%)[
      #for (label, value) in rows {
        meta-row(label, value)
        v(6mm)
      }
    ]
  ]
}

#let section-item(index, item) = text(size: 20pt, fill: bk-blue)[#(index + 1)  #item]

#let section-contents(title, items) = {
  set page(width: 13.333in, height: 7.5in, margin: (top: 15mm, bottom: 14mm, left: 18mm, right: 18mm), background: standard-background())
  pagebreak()
  text(size: 24pt, fill: bk-dark)[Section Contents]
  v(3mm)
  align(center)[
    #rect(fill: panel, radius: 18pt, inset: 15mm, width: 90%)[
      #text(size: 17pt, fill: bk-blue)[#title]
      #v(6mm)
      #for (index, item) in items.enumerate() {
        section-item(index, item)
        if index < items.len() - 1 { v(4mm) }
      }
    ]
  ]
}

#let slide(title: none, body) = {
  set page(width: 13.333in, height: 7.5in, margin: (top: 18mm, bottom: 14mm, left: 18mm, right: 18mm), background: standard-background())
  pagebreak()
  if title != none {
    text(size: 25pt, weight: "bold", fill: bk-dark)[#title]
    v(4mm)
  }
  align(left + horizon, body)
}

#let section-divider(title, subtitle: none) = {
  set page(width: 13.333in, height: 7.5in, margin: 0pt)
  pagebreak()
  place(top + left, image("content/images/Background-nologo.pdf", width: 100%, height: 100%))
  place(center, align(center)[
    #text(size: 30pt, weight: "bold", fill: bk-dark)[#title]
    #if subtitle != none [#v(4mm); #text(size: 13pt, fill: bk-blue)[#subtitle]]
  ])
}

#let agenda(items) = slide(title: "Agenda", [
  #rect(fill: panel, radius: 8pt, inset: 12pt, width: 100%)[
    #for (index, item) in items.enumerate() {
      text(size: 22pt, weight: "bold", fill: bk-blue)[#(index + 1)]
      h(8pt)
      text(size: 22pt, fill: ink)[#item]
      if index < items.len() - 1 { v(8pt); line(length: 100%, stroke: .5pt + luma(210)) }
    }
  ]
])

#let callout(title, body, color: bk-blue) = block(fill: color.lighten(85%), stroke: 1pt + color, radius: 5pt, inset: 9pt)[
  #text(weight: "bold", fill: color)[#title]\
  #body
]

#set text(font: "Times New Roman", size: 24pt, fill: ink)
#set heading(numbering: "1.")
#set par(leading: 0.7em, justify: false)
#set list(indent: 1.35em, body-indent: 0.55em, marker: text(fill: bk-dark)[▶])
#set enum(indent: 1.2em, body-indent: 0.5em)
#show list: set list(marker: [▶])

#show: rest => {
  set page(width: 13.333in, height: 7.5in, background: {
    place(top + left, image("content/images/Background-nologo.pdf", width: 100%, height: 100%))
    place(top + right, pad(right: 12mm, top: 5mm)[#image("content/images/Logo_BK.png", width: 13mm)])
    place(bottom + left, pad(left: 18mm, bottom: 5mm)[#text(size: 8pt, fill: muted)[HCMUT · Faculty of Computer Science and Engineering]])
    context {
      place(bottom + right, pad(right: 18mm, bottom: 5mm)[#text(size: 8pt, fill: bk-blue)[#counter(page).display()]])
    }
  })
  rest
}
