#
# Copyright (c) 2021 OpenHisiIpCam, info@openhisiipcam.org
# SPDX-License-Identifier: MIT
#
# TODO brief description
#

BUILDROOT_VERSION=2021.02.4
#MKDOCS_MATERIAL_VERSION=7.2.6
FLASHROM_VERSION=1.2

all: buildroot flashrom python

../dl:
	mkdir -p ../dl

../dl/buildroot-$(BUILDROOT_VERSION).tar.gz: | ../dl
	wget -O $@ https://buildroot.org/downloads/buildroot-$(BUILDROOT_VERSION).tar.gz

buildroot-$(BUILDROOT_VERSION): ../dl/buildroot-$(BUILDROOT_VERSION).tar.gz
	tar -m -xvf $<

buildroot: buildroot-$(BUILDROOT_VERSION)
	ln -s $< $@

python: mkdocs-material
	pip install mkdocs-material
	#pip install -r ./mkdocs-material/requirements.txt
	#pip install ./mkdocs-material
	pip install mkdocs-minify-plugin
	pip install mkdocs-with-pdf
	pip install qrcode

#../dl/mkdocs-material-$(MKDOCS_MATERIAL_VERSION).tar.gz: | ../dl
#	wget -O $@ https://github.com/squidfunk/mkdocs-material/archive/refs/tags/$(MKDOCS_MATERIAL_VERSION).tar.gz
#
#mkdocs-material-$(MKDOCS_MATERIAL_VERSION): ../dl/mkdocs-material-$(MKDOCS_MATERIAL_VERSION).tar.gz
#	tar -m -xvf $<
#
#mkdocs-material: mkdocs-material-$(MKDOCS_MATERIAL_VERSION)
#	ln -s $< $@

../dl/flashrom-$(FLASHROM_VERSION).tar.gz: | ../dl
	wget -O $@ https://github.com/flashrom/flashrom/archive/refs/tags/v$(FLASHROM_VERSION).tar.gz

flashrom-$(FLASHROM_VERSION): ../dl/flashrom-$(FLASHROM_VERSION).tar.gz
	tar -m -xvf $<

flashrom-$(FLASHROM_VERSION)/.built: flashrom-$(FLASHROM_VERSION)
	make -C flashrom-$(FLASHROM_VERSION)
	touch $@

flashrom: flashrom-$(FLASHROM_VERSION)/.built
	ln -s flashrom-$(FLASHROM_VERSION) $@

#doxybook2: doxybook2-linux-amd64-v1.3.6.zip
#doxybook2-linux-amd64-v1.3.6.zip:
#	wget https://github.com/matusnovak/doxybook2/releases/download/v1.3.6/doxybook2-linux-amd64-v1.3.6.zip

.PHONY: clean
clean:
	rm -rf buildroot*
	#rm -rf mkdocs-material*
	rm -rf flashrom*
