PDF := yingte-xu-cv.pdf
SRC := cv.tex

# Build the CV. Output is named yingte-xu-cv.pdf (the name the website expects).
$(PDF): $(SRC)
	latexmk -pdf -interaction=nonstopmode -halt-on-error -jobname=yingte-xu-cv $(SRC)

.PHONY: build clean
build: $(PDF)

# Remove LaTeX aux files (keeps the committed PDF).
clean:
	latexmk -c -jobname=yingte-xu-cv $(SRC)
