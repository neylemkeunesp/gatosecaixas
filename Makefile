# Makefile for AABS Review Article
# Box-Seeking Behaviour in Felidae

# Main document name (without extension)
MAIN = felid_boxes_review

# LaTeX compiler
LATEX = pdflatex
BIBTEX = bibtex

# PDF viewer (adjust for your system)
# Linux: evince, okular, xdg-open
# macOS: open
# Windows: start
VIEWER = xdg-open

# Compiler flags
LATEXFLAGS = -interaction=nonstopmode -halt-on-error

.PHONY: all clean cleanall view help count

# Default target: compile the document
all: $(MAIN).pdf

# Compile the PDF
$(MAIN).pdf: $(MAIN).tex references.bib
	@echo "=== First LaTeX pass ==="
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	@echo "\n=== Processing bibliography ==="
	$(BIBTEX) $(MAIN)
	@echo "\n=== Second LaTeX pass ==="
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	@echo "\n=== Third LaTeX pass ==="
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	@echo "\n=== Compilation complete! ==="
	@echo "Output: $(MAIN).pdf"

# Quick compile (no bibliography update)
quick: $(MAIN).tex
	@echo "=== Quick compile (no BibTeX) ==="
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex

# View the PDF
view: $(MAIN).pdf
	@echo "=== Opening PDF viewer ==="
	$(VIEWER) $(MAIN).pdf &

# Count words (approximate, excluding LaTeX commands)
count: $(MAIN).tex
	@echo "=== Word count (approximate) ==="
	@detex $(MAIN).tex | wc -w || echo "Install 'detex' for accurate word count"
	@echo "\nAbstract word count:"
	@sed -n '/\\begin{center}/,/\\end{center}/p' $(MAIN).tex | detex | wc -w || echo "N/A"

# Clean auxiliary files
clean:
	@echo "=== Cleaning auxiliary files ==="
	rm -f $(MAIN).aux
	rm -f $(MAIN).log
	rm -f $(MAIN).out
	rm -f $(MAIN).toc
	rm -f $(MAIN).bbl
	rm -f $(MAIN).blg
	rm -f $(MAIN).lof
	rm -f $(MAIN).lot
	rm -f $(MAIN).fls
	rm -f $(MAIN).fdb_latexmk
	rm -f $(MAIN).synctex.gz
	@echo "Auxiliary files removed."

# Clean everything including PDF
cleanall: clean
	@echo "=== Removing PDF ==="
	rm -f $(MAIN).pdf
	@echo "All generated files removed."

# Help message
help:
	@echo "=== Makefile for AABS Review Article ==="
	@echo ""
	@echo "Available targets:"
	@echo "  make         - Compile the complete document (default)"
	@echo "  make quick   - Quick compile without BibTeX update"
	@echo "  make view    - Open the PDF in viewer"
	@echo "  make count   - Count words (requires detex)"
	@echo "  make clean   - Remove auxiliary files"
	@echo "  make cleanall- Remove all generated files including PDF"
	@echo "  make help    - Show this help message"
	@echo ""
	@echo "Workflow:"
	@echo "  1. make           # Compile document"
	@echo "  2. make view      # View result"
	@echo "  3. make clean     # Clean up when done"
	@echo ""
	@echo "Note: First compilation may show warnings - this is normal."
	@echo "      Run 'make' again if references show as [?]"

# Check LaTeX installation
check:
	@echo "=== Checking LaTeX installation ==="
	@which pdflatex > /dev/null && echo "✓ pdflatex found" || echo "✗ pdflatex NOT found"
	@which bibtex > /dev/null && echo "✓ bibtex found" || echo "✗ bibtex NOT found"
	@which detex > /dev/null && echo "✓ detex found (word count available)" || echo "✗ detex NOT found (install for word count)"
	@echo ""
	@echo "Required LaTeX packages:"
	@echo "  - times, geometry, setspace, lineno"
	@echo "  - natbib, graphicx, booktabs, hyperref"
	@echo ""
	@echo "If packages are missing, install texlive-full or use tlmgr"
