all: cv_10.tex
	xelatex cv_10
	biber cv_10
	xelatex cv_10

fix_bib: bibliography.bib
	sed 's/Bayer, Philipp E /\\textbf{Bayer, Philipp E} /' bibliography.bib | sed 's/Bayer, Philipp Emanuel /\\textbf{Bayer, Philipp E} /' | sed 's/{Bayer, Philipp Emanuel}/{\\textbf{Bayer, Philipp E}}/' | sed 's/Bayer, Philipp and/\\textbf{Bayer, Philipp E} and/' > temp_bib
	mv temp_bib bibliography.bib

print_cites: bibliography.bib
	grep '^@' bibliography.bib | sed 's/@article/\\cite/' | sed 's/@inproceedings/\\cite/' | sed 's/@incollection/\\cite/' | sed 's/,/}/'
