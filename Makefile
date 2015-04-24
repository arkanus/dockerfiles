TAG?=latest
REGISTRY?=arkanus
SUBDIRS:=$(shell ls -d */|sed 's/\///g')

all:
	@echo "You must specify at least one directory name of the images you want to build"

.PHONY: subdirs $(SUBDIRS)
$(SUBDIRS):
	docker build -t $(REGISTRY)/$@ $@
