#
# Programmer:    Craig Stuart Sapp <craig@ccrma.stanford.edu>
# Creation Date: Wed Mar 16 13:14:01 PDT 2016
# Last Modified: Wed Mar 16 13:14:06 PDT 2016
# Filename:      pdf-score/Makefile
# Syntax:        perl 5
#
# Description:   Creates PDF files for full scores.
#

MAKEPDFS   = ../../bin/makepdfs

all: works opus

movements:
	$(MAKEPDFS) ../pages-score/*.pag

works:
	@echo "Creating PDF for each work"
	$(MAKEPDFS) -a ../footers/vivaldi-op04n01.footer ../pages-score/vivaldi-op04n01-*.pag
	$(MAKEPDFS) -a ../footers/vivaldi-op04n02.footer ../pages-score/vivaldi-op04n02-*.pag
	#$(MAKEPDFS) -a ../footers/vivaldi-op04n03.footer ../pages-score/vivaldi-op04n03-*.pag
	$(MAKEPDFS) -a ../footers/vivaldi-op04n04.footer ../pages-score/vivaldi-op04n04-*.pag
	$(MAKEPDFS) -a ../footers/vivaldi-op04n05.footer ../pages-score/vivaldi-op04n05-*.pag
	$(MAKEPDFS) -a ../footers/vivaldi-op04n06.footer ../pages-score/vivaldi-op04n06-*.pag

opus:
	@echo "Creating PDF for entire opus"
	#$(MAKEPDFS) -a ../footers/vivaldi-op04.footer ../pages-score/vivaldi-op04*.pag


clean: 
	rm -f *.pdf
