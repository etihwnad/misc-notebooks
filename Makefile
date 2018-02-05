
SHELL=/bin/bash
.SECONDARY:

NOTEBOOKS = $(wildcard *.ipynb)
PDFS = $(NOTEBOOKS:.ipynb=.pdf)



all: pdf #slides web

pdf: $(NOTEBOOKS:.ipynb=.pdf)

slides: $(NOTEBOOKS:.ipynb=.slides.html)


%.pdf: %.ipynb
	jupyter nbconvert --to pdf --template normal.tplx $<

2017-%.pdf: 2017-%.ipynb
	jupyter nbconvert --to pdf --template handout.tplx $<

