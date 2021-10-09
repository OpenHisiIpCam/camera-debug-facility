#
# Copyright (c) 2021 OpenHisiIpCam, info@openhisiipcam.org
# SPDX-License-Identifier: MIT
#
# TODO brief description
#

BUILDROOT_VERSION=2021.02.4
FLASHROM_VERSION=7b9c74f
#MCP_VERSION=2.0.1

all: buildroot flashrom merge_config_plus python

../dl:
	mkdir -p ../dl

../dl/buildroot-$(BUILDROOT_VERSION).tar.gz: | ../dl
	wget -O $@ https://buildroot.org/downloads/buildroot-$(BUILDROOT_VERSION).tar.gz

buildroot-$(BUILDROOT_VERSION): ../dl/buildroot-$(BUILDROOT_VERSION).tar.gz
	tar -m -xvf $<

buildroot: buildroot-$(BUILDROOT_VERSION)
	ln -s $< $@

python: 
	pip install mkdocs-material
	pip install mkdocs-minify-plugin
	pip install mkdocs-with-pdf
	pip install qrcode

../dl/flashrom-$(FLASHROM_VERSION).tar.gz: | ../dl
	wget -O $@ https://github.com/flashrom/flashrom/tarball/$(FLASHROM_VERSION)

flashrom-flashrom-$(FLASHROM_VERSION): ../dl/flashrom-$(FLASHROM_VERSION).tar.gz
	tar -m -xvf $<

flashrom-flashrom-$(FLASHROM_VERSION)/.built: flashrom-flashrom-$(FLASHROM_VERSION)
	make -C flashrom-flashrom-$(FLASHROM_VERSION)
	touch $@

flashrom: flashrom-flashrom-$(FLASHROM_VERSION)/.built
	ln -s flashrom-flashrom-$(FLASHROM_VERSION) $@

#../dl/merge_config_plus-$(MCP_VERSION).tar.gz:
#	wget https://github.com/OpenHisiIpCam/merge_config_plus/archive/refs/tags/v$(MCP_VERSION).tar.gz -O $@

#merge_config_plus-$(MCP_VERSION): ../dl/merge_config_plus-$(MCP_VERSION).tar.gz
#	tar -m -xvf $<

#merge_config_plus: merge_config_plus-$(MCP_VERSION)
#	ln -s $< $@

.PHONY: clean
clean:
	rm -rf buildroot*
	rm -rf flashrom*
