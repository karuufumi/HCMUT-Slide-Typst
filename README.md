# HCMUT Typst Presentation Template

A reusable Beamer-style presentation template for the Ho Chi Minh City University of Technology (HCMUT / BK), adapted from the visual language of the example in `Slide/`.

## Requirements

- Typst 0.15 or newer
- Times New Roman

## Structure

```text
presentation.typ             # reusable theme and slide helpers
slides.typ                   # presentation entry point
references.bib               # BibTeX-compatible bibliography
content/front-matter.typ     # configurable title-page data
content/images/Logo_BK.png   # HCMUT/BK logo
content/sections/             # independent slide sections
```

Edit `content/front-matter.typ` for title-page metadata, then add or reorder files in `slides.typ`. Section headings (`= Section`) create divider slides; use `== Subsection` for subsection headings.

## Compile

```sh
make
# or
./run.sh
```

Both commands write only `output/presentation.pdf`. Existing files in `output/` are preserved. Typst reads `references.bib` directly, so no separate BibTeX or Biber command is needed.

The `Slide/` directory is the original LaTeX/Beamer reference and is intentionally left unchanged.
