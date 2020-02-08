project=pgp_sucks

all: $(project).pdf

# because vim-latexsuite
pdf: $(project).pdf $(project).tex

$(project).pdf: $(project).tex
	pdflatex $(project)
	#makeindex $(project)
	#makeglossaries $(project)
	pdflatex $(project)
	pdflatex $(project)
clean:
	rm *.aux *.g* *.i* *.log *.out *.pdf *.toc *.4ct *.4tc *.css *.dvi *.lg *.tmp *.xref


