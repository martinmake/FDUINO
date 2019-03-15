LDIR :=$(HOME)/Documents/AVR/libs
LADIR:=$(LDIR)/arc
LIDIR:=$(LDIR)/inc
LMDIR:=$(LDIR)/man

######END#OF#CONFIGURATION#VARIABLES######

export LDIR LADIR LIDIR LMDIR

EXAMPLE_PATHS:=$(dir $(shell find SOFTWARE -name Makefile))

.PHONY: all
all:
	+$(foreach PATH,$(EXAMPLE_PATHS),make -e -C $(PATH) -j4;)

.PHONY: clean
clean:
	$(foreach PATH,$(EXAMPLE_PATHS),make -e -C $(PATH) clean;)
