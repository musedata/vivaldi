##
## Programmer:    Craig Stuart Sapp <craig@ccrma.stanford.edu>
## Creation Date: Wed Apr  3 18:53:57 PDT 2024
## Last Modified: Fri Apr 26 08:32:33 PDT 2024
## Syntax:        GNU Makefile
## Filename:      op02/Makefile
## vim:           ts=3
##
## Description: Makefile to prepare data for op. 2.
##
## Make targets:
##      musedata == convert source files into MuseData multi-file Stage 2 files.
##      humdrum  == convert MuseData multi Stage 2 files into Humdrum files.
##                  (Need to run "make musedata" first).
##

BINDIR = ../bin

.PHONY: source musedata kern pdf pages

all:
	@echo "Makefile targets:"
	@echo "   make musedata == create MuseData (stage 2) multi-files"
	@echo "   make humdrum  == create Humdrum files from the MuseData files"
	@echo "   make both     == create MuseData and Humdrum files in one step"
	@echo "   make clean    == earse all MuseData and Humdrum files"

both: musedata kern

cb: clean both

musedata:
	$(BINDIR)/makeAllMuseData


kern: humdrum
hum: humdrum
humdrum:
	$(BINDIR)/makeAllKern


clean:
	rm musedata/*.mds
	rm kern/*.krn
	rmdir musedata
	rmdir kern



