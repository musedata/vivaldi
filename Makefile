##
## Programmer:    Craig Stuart Sapp <craig@ccrma.stanford.edu>
## Creation Date: Wed Apr  3 18:53:57 PDT 2024
## Last Modified: Wed Apr  3 18:54:00 PDT 2024
## Syntax:        GNU Makefile
## Filename:      Makefile
## vim:           ts=3
##
## Description: Makefile to run tasks for the vivaldi repository.
##
## Make targets:
##      musedata == convert source files into MuseData multi-file Stage 2 files.
##      humdrum  == convert MuseData multi Stage 2 files into Humdrum files.
##                  (Need to run "make musedata" first).
##

BINDIR = ./bin

.PHONY: source musedata kern

all:
	@echo "Makefile targets:"
	@echo "   make musedata == create MuseData (stage 2) multi-files"
	@echo "   make humdrum  == create Humdrum files from the MuseData files"
	@echo "   make both     == create MuseData and Humdrum files in one step"
	@echo "   make clean    == earse all MuseData and Humdrum files"

both: musedata kern

musedata:
	$(BINDIR)/makeAllMuseData


kern: humdrum
hum: humdrum
humdrum:
	$(BINDIR)/makeAllKern


clean:
	rm op*/musedata/*.mds
	rm op*/kern/*.krn



