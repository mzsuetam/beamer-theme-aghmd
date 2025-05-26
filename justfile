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

install-aghmd:
	@echo "Copying AGHMD theme to ~/texmf/tex/latex/beamer/ directory..."
	@mkdir -p ~/texmf/tex/latex/beamer/
	@cp -r AGHMD ~/texmf/tex/latex/beamer/
	@echo "Done!"
