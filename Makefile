.PHONY: all
all: final
	open main.pdf

final: main.pdf
	biber main
	xelatex main.tex

main.pdf: main.tex content/*.tex bib/*.bib main.bbl
	xelatex main.tex

.PHONY: clean
clean:
	rm -f *.aux *.bcf *.blg *.log *.run.xml *.bbl *.nav *.out *.snm *.toc *.vrb *.pdf bib/*.aux graphs/*.tex graphs/*.dot
