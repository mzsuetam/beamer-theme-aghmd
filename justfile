OUTDIR := "out"
BIB := "bibliography.bib"
CSL := "csl/acm-sig-proceedings-long-author-list.csl"
HIGHLIGHT_STYLE := "highlight-styles/pygments-bg.theme"
# Generate PDF slides from Markdown files using Pandoc with Beamer theme AGHMD
pdf src="src" out="slides-latest" outdir=OUTDIR bib=BIB csl=CSL highlight_style=HIGHLIGHT_STYLE:
    mkdir -pv {{outdir}}
    pandoc -t beamer {{src}}/*.md \
    -o {{outdir}}/{{out}}.pdf \
    -F pandoc-crossref \
    -L filters/lang-filter.lua \
    --resource-path {{src}} \
    --slide-level=2 \
    --citeproc \
    --bibliography={{src}}/{{bib}} \
    --csl={{csl}} \
    --highlight-style={{highlight_style}}

TEXMFHOME := `kpsewhich -var-value=TEXMFHOME`
# Installs the AGHMD Beamer theme to the local TeX directory
install-aghmd:
    mkdir -p {{TEXMFHOME}}/tex/latex/beamer/
    cp -r AGHMD {{TEXMFHOME}}/tex/latex/beamer/
    mktexlsr {{TEXMFHOME}}

# Prints the list of available commands with descriptions
help:
    just --list
