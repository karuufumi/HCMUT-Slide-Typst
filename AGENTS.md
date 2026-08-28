I want to create a Typst Beamer-style presentation template for HCMUT.

Context:
- University: Ho Chi Minh City University of Technology (HCMUT / BK)
- Faculty: Faculty of Computer Science and Engineering
- Use Typst, not LaTeX.
- The presentation should follow the visual identity of the HCMUT thesis/capstone template:
  - Times New Roman where possible
  - BK blue color
  - HCMUT/BK logo
  - Formal academic layout
  - Clean, readable slides
  - Consistent title, section, footer, and page-number styling

Please create a reusable project structure:

presentation.typ       # reusable formatting/theme
slides.typ             # main presentation entry point
content/
  front-matter.typ     # title, authors, faculty, date, logo
  images/
    Logo_BK.png
  sections/            # separate slide section files

Requirements:
- Keep content separate from the core theme.
- Make the title page configurable.
- Support sections and subsections.
- Add a table-of-contents/agenda slide.
- Add section divider slides.
- Add slide numbers and a clean footer.
- Support figures, tables, equations, citations, and references.
- Use a BibTeX-compatible references.bib file directly through Typst.
- Do not require separate bibtex or biber commands.
- Add a Makefile and run.sh.
- `make` and `./run.sh` should compile the presentation.
- The generated PDF should be written to `output/presentation.pdf`.
- Existing files in `output/` must not be deleted; compilation should only overwrite `output/presentation.pdf`.
- Put all images in `content/images/`.
- Add a simple README explaining how to edit and compile the project.
- Add a useful `.gitignore`.

Please inspect the official HCMUT capstone/thesis visual style if reference files are provided, and prioritize a polished, practical template over a generic presentation theme.


READ THE SLIDE SUBFOLDER AND SEE THE EXAMPLE BEAMER FROM THERE
TAKE ASSETS FROM THERE IF NEEDED