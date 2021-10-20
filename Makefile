include make.defs.intel

MPICXX=mpicxx

ring-test: ring-test.cc
	$(MPICXX) $(CXXVERFLAGS) $(CXXOPTFLAGS) $(CXXINFOFLAGS) -o $@ $<

%.pdf: %.tex
	pdflatex -synctex=1 -interaction=nonstopmode $<

report: ring_test_latest.csv report.pdf

clean:
	rm -f ring-test *.aux *.pdf *.synctex.gz

.PHONY: clean

