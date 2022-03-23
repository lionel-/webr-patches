ROOT = $(abspath .)
R_SOURCE = $(ROOT)/../r-source

WEBR_PATCHES = ~/Sync/Projects/R/webR/R/patches

.PHONY: all
all:
	cd $(R_SOURCE) && \
	  git format-patch -o $(ROOT) webr-fortran-bind-c\~..webr-fortran-bind-c --

.PHONY: webr
webr:
	cp *.patch $(WEBR_PATCHES)
