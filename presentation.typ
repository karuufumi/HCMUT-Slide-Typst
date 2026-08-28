#let bk-blue = rgb("1488DB")
#let bk-dark = rgb("032B91")
#let bk-light = rgb("EAF4FC")
#let ink = rgb("1F2937")
#let muted = rgb("64748B")
#let panel = rgb("F1F3F5")

#set page(width: 13.333in, height: 7.5in)

#let title-page(title: "HCMUT Presentation", subtitle: none, authors: (), faculty: "Faculty of Computer Science and Engineering", date: none, logo: "content/images/Logo_BK.png", university: "HO CHI MINH CITY UNIVERSITY OF TECHNOLOGY") = {
  set page(width: 13.333in, height: 7.5in, margin: 0pt)
  pagebreak()
  place(top + left, rect(width: 100%, height: 100%, fill: white))
  place(top + left, rect(width: 100%, height: 8pt, fill: bk-blue))
  place(bottom + left, rect(width: 100%, height: 12pt, fill: bk-dark))
  align(center + horizon)[
    #image(logo, width: 30mm)
    #v(8mm)
    #text(size: 10pt, weight: "bold", fill: bk-dark)[#university]
    #v(5mm)
    #text(size: 25pt, weight: "bold", fill: bk-dark)[#title]
    #if subtitle != none [#v(3mm); #text(size: 14pt, fill: bk-blue)[#subtitle]]
    #v(14mm)
    #line(length: 55%, stroke: 1.2pt + bk-blue)
    #v(5mm)
    #text(size: 11pt, fill: ink)[#authors.join("  ·  ")]
    #v(2mm)
    #text(size: 10pt, fill: muted)[#faculty]
    #if date != none [#v(2mm); #text(size: 10pt, fill: muted)[#date]]
  ]
  pagebreak()
}

#let slide(title: none, body) = {
  set page(width: 13.333in, height: 7.5in)
  set page(margin: (top: 18mm, bottom: 14mm, left: 18mm, right: 18mm))
  if title != none {
    text(size: 22pt, weight: "bold", fill: bk-dark)[#title]
    v(3mm)
    line(length: 100%, stroke: 1.2pt + bk-blue)
    v(7mm)
  }
  body
}

#let section-divider(title, subtitle: none) = {
  set page(width: 13.333in, height: 7.5in, margin: 0pt)
  pagebreak()
  align(center + horizon)[
    rect(width: 100%, height: 100%, fill: bk-dark)
    place(center, align(center)[
      text(size: 30pt, weight: "bold", fill: white)[#title]
      #if subtitle != none [#v(4mm); text(size: 13pt, fill: white)[#subtitle]]
    ])
  ]
  pagebreak()
}

#let agenda(items) = slide(title: "Agenda", [
  #rect(fill: panel, radius: 8pt, inset: 12pt, width: 100%)[
    #for (index, item) in items.enumerate() {
      text(size: 16pt, weight: "bold", fill: bk-blue)[#(index + 1)]
      h(8pt)
      text(size: 16pt, fill: ink)[#item]
      if index < items.len() - 1 { v(8pt); line(length: 100%, stroke: .5pt + luma(210)) }
    }
  ]
])

#let callout(title, body, color: bk-blue) = block(fill: color.lighten(85%), stroke: 1pt + color, radius: 5pt, inset: 9pt)[
  #text(weight: "bold", fill: color)[#title]\
  #body
]

#show heading.where(level: 1): it => {
  pagebreak()
  section-divider(it.body)
}
#show heading.where(level: 2): it => slide(title: it.body, [])

#set text(font: "Times New Roman", size: 13pt, fill: ink)
#set heading(numbering: "1.")
#set par(leading: 0.7em, justify: false)
#set list(indent: 1.2em, body-indent: 0.5em)
#set enum(indent: 1.2em, body-indent: 0.5em)

#show: rest => {
  set page(width: 13.333in, height: 7.5in, background: {
    place(top + right, pad(right: 12mm, top: 5mm)[#image("content/images/Logo_BK.png", width: 13mm)])
    place(bottom + left, pad(left: 18mm, bottom: 5mm)[#text(size: 8pt, fill: muted)[HCMUT · Faculty of Computer Science and Engineering]])
    context {
      place(bottom + right, pad(right: 18mm, bottom: 5mm)[#text(size: 8pt, fill: bk-blue)[#counter(page).display()]])
    }
  })
  rest
}
