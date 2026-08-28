#import "../presentation.typ": title-page

#let front-matter(
  title: "PERIODIC REPORT",
  subtitle: "HIGH PERFORMANCE COMPUTING",
  report-number: "#XX",
  reporting-period: "25_MMDD - 25_MMDD",
  supervisor: "YOUR SUPERVISOR",
  student: "YOUR NAME",
) = title-page(
  title: title,
  subtitle: subtitle,
  report-number: report-number,
  reporting-period: reporting-period,
  supervisor: supervisor,
  student: student,
)
