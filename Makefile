ROOT = $(abspath .)
R_SOURCE = $(ROOT)/../r-source

WEBR_PATCHES = ~/Sync/Projects/R/webr-build/R/patches

.PHONY: all
all:
	cd $(R_SOURCE) && \
	  git format-patch -o $(ROOT) tre-signature-mismatch\~..tre-signature-mismatch --

.PHONY: webr
webr:
	cp *.patch $(WEBR_PATCHES)
