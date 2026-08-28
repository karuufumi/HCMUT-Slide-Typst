#import "../presentation.typ": title-page

#let front-matter(
  title: "A Practical HCMUT Presentation",
  subtitle: "A Typst Beamer-style template",
  authors: ("Student Name",),
  faculty: "Faculty of Computer Science and Engineering",
  date: "August 2026",
) = title-page(
  title: title,
  subtitle: subtitle,
  authors: authors,
  faculty: faculty,
  date: date,
)
