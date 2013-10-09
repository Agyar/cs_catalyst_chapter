default: bib tex 

tex:
	latex chapter.tex
	dvips chapter.dvi -Ppdf 
	ps2pdf chapter.ps

clean:
	rm *.log *.idx *.aux *.ps *.dvi

view:
	evince chapter.pdf

all: tex view

bib: tex 
	-@bibtex chapter.aux >/dev/null 2>&1 
