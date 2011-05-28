TeX	=	latex
PDF	=	pdflatex
CAT	=	dviconcat

PAGES	=	intro.tex t1.tex t2.tex t3.tex t4.tex t5.tex t6.tex t7.tex t8.tex t9.tex t10.tex

cheat:	cheat.pdf

cheat.pdf: $(PAGES)
	$(PDF) main

cheat.tex: psfig.tex stables.tex macros.tex

#unit.tex: unit.fig
#	./bin/fig2tex -m 0.5 unit.fig

#angle.tex: angle.fig
#	./bin/fig2tex -m 0.3 angle.fig

#triangle.tex: triangle.fig
#	./bin/fig2tex -m 0.8 triangle.fig

ecsher.ps: ecsher.gif
	./bin/gif2ps ecsher.gif 1.85

trig1.tex: unit.tex
trig2.tex: triangle.tex
geom.tex: angle.tex
t10.tex: ecsher.ps

clean:
	rm -f *.dvi *.log *.bak *.out *.aux cheat.ps

depend:
	./bin/makedepend t?.tex t10.tex

# DO NOT DELETE THIS LINE -- make depend depends on it.
intro.dvi:  intro.tex version.tex
t1.dvi:  header.tex sums.tex ids2.tex
t2.dvi:  header.tex ids3.tex trees.tex recur1.tex recur2.tex recur3.tex
t3.dvi:  header.tex misc.tex prob.tex prob2.tex
t4.dvi:  header.tex trig1.tex matrix.tex trig2.tex hyper.tex table.tex quote4.tex
t5.dvi:  header.tex number.tex graph.tex graph2.tex geom.tex quote1.tex
t6.dvi:  header.tex pi.tex calc.tex partial.tex quote3.tex
t7.dvi:  header.tex calc2.tex
t8.dvi:  header.tex calc3.tex finite.tex fact1.tex fact2.tex
t9.dvi:  header.tex series1.tex series3.tex quote2.tex
t10.dvi:  header.tex series2.tex series4.tex stieltjes.tex magic.tex cramers.tex fib1.tex fib2.tex
