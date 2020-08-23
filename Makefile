notes.pdf: jurisprudence-notes.tex tex/episodes.tex
	latexmk -pdf jurisprudence-notes.tex

tex/episodes.tex: episodes/ep*.md
	pandoc -o tex/episodes.tex episodes/ep*.md