all: cv_10.tex
	xelatex cv_10
	biber cv_10
	xelatex cv_10

clean:
	rm -f *aux *bbl *bcf *blg *log *out *run.xml
