PDF    := yingte-xu-cv.pdf
SRC    := cv.tex
ZH_PDF := yingte-xu-cv-zh.pdf
ZH_SRC := cv.zh.tex

# Build both CVs. Output names are the ones the website expects.
.PHONY: build clean
build: $(PDF) $(ZH_PDF)

$(PDF): $(SRC)
	latexmk -pdf -interaction=nonstopmode -halt-on-error -jobname=yingte-xu-cv $(SRC)

# The Chinese CV needs XeLaTeX (ctex + system-independent Fandol fonts).
$(ZH_PDF): $(ZH_SRC)
	latexmk -xelatex -interaction=nonstopmode -halt-on-error -jobname=yingte-xu-cv-zh $(ZH_SRC)

# Remove LaTeX aux files (keeps the committed PDFs).
clean:
	latexmk -c -jobname=yingte-xu-cv $(SRC)
	latexmk -c -jobname=yingte-xu-cv-zh $(ZH_SRC)
