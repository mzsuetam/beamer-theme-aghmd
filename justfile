pdf src="src" out="slides-latest" outdir="out":
    cd {{src}} && \
    pandoc -t beamer *.md \
    -o ../{{outdir}}/{{out}}.pdf \
    -F pandoc-crossref \
    -L ../filters/lang-filter.lua \
    --slide-level=2 \
    --citeproc \
    --bibliography=bibliography.bib \
    --csl=../csl/acm-sig-proceedings-long-author-list.csl

TEXMFHOME := `kpsewhich -var-value=TEXMFHOME`

install-aghmd:
    @echo "Copying AGHMD theme to {{TEXMFHOME}}/tex/latex/beamer/ directory..."
    @mkdir -p {{TEXMFHOME}}/tex/latex/beamer/
    @cp -r AGHMD {{TEXMFHOME}}/tex/latex/beamer/
    mktexlsr {{TEXMFHOME}}
    @echo "Done!"
