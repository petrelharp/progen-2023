.PHONY: all, clean

all: probgen-2023-poster.pdf

probgen-2023-poster.pdf : refs.bib tskit_logo.pdf

clean: 
	-rm *.aux *.log *.bbl *.blg

%.pdf : %.tex %.bbl
	while ( pdflatex $<;  grep -q "Rerun to get" $*.log ) do true ; done

%.aux : %.tex
	-pdflatex $<

%.bbl : %.aux
	bibtex $<

%.png : %.pdf
	convert -density 300 $< -flatten $@

%.pdf : %.svg
	inkscape $< --export-filename=$@

%.pdf : %.eps
	# inkscape $< --export-filename=$@
	epspdf $<

%.pdf : %.ink.svg
	inkscape $< --export-filename=$@
