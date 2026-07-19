# yingte-cv

Yingte Xu's CV — a standalone LaTeX project.

The source is a plain, hand-edited `cv.tex` (moderncv `banking` style). It is
**not** generated from any template or data file — edit the `.tex` directly.

## Build

```bash
make          # -> yingte-xu-cv.pdf
make clean    # remove LaTeX aux files (keeps the PDF)
```

Requires a TeX Live install with `latexmk` and the `moderncv` class.

## Why the PDF is committed

`yingte-xu-cv.pdf` is tracked in git on purpose: the
[YingteWorld website](https://github.com/LucianoXu/YingteWorld) includes this
repo as a git submodule (at `cv/`) and copies the compiled PDF into its
`public/` directory at build time, so it never needs a LaTeX toolchain.

After editing `cv.tex`, run `make` and commit both `cv.tex` and the refreshed
`yingte-xu-cv.pdf`. (LaTeX embeds a non-deterministic creation date, so the PDF
changes on every rebuild — that is expected.)
