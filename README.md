# yingte-cv

Yingte Xu's CV — a standalone LaTeX project.

Two hand-edited sources, both moderncv `banking` style:

| Source      | Output                 | Engine                          |
|-------------|------------------------|---------------------------------|
| `cv.tex`    | `yingte-xu-cv.pdf`     | pdfLaTeX                        |
| `cv.zh.tex` | `yingte-xu-cv-zh.pdf`  | XeLaTeX (`ctex`, Fandol fonts)  |

`cv.zh.tex` is the Chinese counterpart of `cv.tex`, section for section — when
you change one, change the other. Neither is generated from a template or data
file; edit the `.tex` directly.

## Build

```bash
make          # -> yingte-xu-cv.pdf and yingte-xu-cv-zh.pdf
make clean    # remove LaTeX aux files (keeps the PDFs)
```

Requires a TeX Live install with `latexmk`, XeLaTeX, the `moderncv` class and
`ctex`. The Chinese CV pins `ctex`'s Fandol fonts (shipped with TeX Live), so it
renders the same on any machine.

## Why the PDFs are committed

The PDFs are tracked in git on purpose: the
[YingteWorld website](https://github.com/LucianoXu/YingteWorld) includes this
repo as a git submodule (at `cv/`) and copies the compiled PDFs into its
`public/` directory at build time, so it never needs a LaTeX toolchain.

After editing a `.tex`, run `make` and commit it together with the refreshed
PDF. (LaTeX embeds a non-deterministic creation date, so the PDF
changes on every rebuild — that is expected.)
