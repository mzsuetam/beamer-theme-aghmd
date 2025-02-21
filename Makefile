pdf:
	cd src/ && \
	pandoc -t beamer *.md -o ../out/slides-latest.pdf \
	--metadata-file=../config-slides.yaml \
	-F pandoc-crossref \
	--slide-level=2 \
	--citeproc \
	--bibliography=bibliography.bib \
	--csl=../csl/acm-sig-proceedings-long-author-list.csl

install-aghmm:
	mkdir -p ~/texmf/tex/latex/beamer/
	cp -r AGHMM ~/texmf/tex/latex/beamer/
