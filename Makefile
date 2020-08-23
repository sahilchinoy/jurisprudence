all: jurisprudence-notes.pdf jurisprudence-notes.md
.PHONY: all

jurisprudence-notes.pdf: tex/skeleton.tex tex/episodes.tex
	latexmk -pdf -jobname=jurisprudence-notes tex/skeleton.tex
	latexmk -c -jobname=jurisprudence-notes tex/skeleton.tex

jurisprudence-notes.md: README.md episodes/ep*.md
	pandoc -o jurisprudence-notes.md -t gfm README.md episodes/ep*.md

tex/episodes.tex: episodes/ep*.md
	pandoc -o tex/episodes.tex episodes/ep*.md