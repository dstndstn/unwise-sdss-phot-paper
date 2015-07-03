all: sdsswise.pdf

sdsswise.pdf: sdsswise.tex
	pdflatex $<

arxiv: arxiv.tgz
@PHONY: arxiv

ARXIV := sdsswise.tex \
bright-00.pdf bright-01.pdf bright-02.pdf bright-03.pdf \
bright-08.pdf bright-09.pdf bright-10.pdf bright-11.pdf \
bright-36.pdf bright-37.pdf bright-38.pdf bright-39.pdf \
density-00.pdf density-01.pdf density-02.pdf density-03.pdf \
density-04.pdf density-05.pdf density-06.pdf density-07.pdf \
figs/comp-16.pdf figs/comp-17.pdf figs/comp-18.pdf \
figs/comp-19.pdf figs/comp-24.pdf figs/comp-29.pdf figs/comp-34.pdf \
figs2/model-30.pdf figs2/model-31.pdf figs2/model-32.pdf \
figs2/model-33.pdf figs2/model-34.pdf figs2/model-35.pdf \
lrg-00.pdf lrg-01.pdf lrg-02.pdf lrg-03.pdf lrg-04.pdf lrg-05.pdf \
map-03.pdf map-04.pdf wmap-00.pdf \
psf-00.pdf ptsrc-05.pdf

arxiv.tgz: $(ARXIV)
	tar czf $@ $(ARXIV)

aj:
	mkapj sdsswise

@PHONY: aj

