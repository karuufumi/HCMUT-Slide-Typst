TYPST ?= typst
SOURCE := slides.typ
OUTPUT_DIR := output
OUTPUT := $(OUTPUT_DIR)/presentation.pdf

.PHONY: all compile clean help

all: compile

compile:
	@mkdir -p "$(OUTPUT_DIR)"
	$(TYPST) compile --root . "$(SOURCE)" "$(OUTPUT)"

clean:
	@echo "Generated files are kept; remove only $(OUTPUT) manually if needed."

help:
	@echo "make or make compile  Compile the presentation to $(OUTPUT)"
	@echo "make clean            Keep generated output and show the safe cleanup policy"
