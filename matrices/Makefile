#  Makefile for Sparse test suite
#
#  Ken Kundert
#  kundert@users.sourceforge.net

SPARSE = ../bin/sparse

OUT_FILES = $(patsubst %.mat,%.out,$(wildcard *.mat)) \
	    $(patsubst %.mat.gz,%.out,$(wildcard *.mat.gz))


all:	$(OUT_FILES)

clean:
	rm -f $(OUT_FILES)

%.out: %.mat ; $(SPARSE) $< > $@

%.out: %.mat.gz ; zcat $< | $(SPARSE) > $@
