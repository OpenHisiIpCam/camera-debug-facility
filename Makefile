#
# Copyright (c) 2021 OpenHisiIpCam, info@openhisiipcam.org
# SPDX-License-Identifier: MIT
#
# TODO brief description
#

BUILDROOT_VERSION=2021.02.4
BR_EXTERNAL = $(abspath .)

.PHONY: usage
usage:
	@echo "TODO"

.PHONY: list-defconfigs
list-defconfigs: buildroot
	make \
                -C $(abspath buildroot) \
                BR2_EXTERNAL=$(BR_EXTERNAL) \
                list-defconfigs

.PHONY: %_defconfig
%_defconfig: buildroot
	@test -f ./configs/$@ || (echo "Config $@ does not exist"; exit 1)
	make \
                -C $(abspath buildroot) \
                BR2_EXTERNAL=$(abspath $(BR_EXTERNAL)) \
                O=$(abspath output/$(subst _defconfig,,$@)) \
                $@


.PHONY: prepare
prepare: buildroot mkdocs-material mkdocs-plugins

dl:
	mkdir -p dl

dl/buildroot-$(BUILDROOT_VERSION).tar.gz: | dl
	wget -O $@ https://buildroot.org/downloads/buildroot-$(BUILDROOT_VERSION).tar.gz

buildroot-$(BUILDROOT_VERSION): dl/buildroot-$(BUILDROOT_VERSION).tar.gz
	tar -m -xvf $<

buildroot: buildroot-$(BUILDROOT_VERSION)
	ln -s $< $@

mkdocs-material:
	git clone https://github.com/squidfunk/mkdocs-material.git --depth 1
	pip install -r mkdocs-material/requirements.txt

mkdocs-plugins:
	pip install mkdocs-minify-plugin
	pip install mkdocs-with-pdf
	#pip install mkdocs-doxygen-plugin

# Run BR utils/check-package on all custom packages
.IGNORE: check-packages
check-packages: buildroot
	buildroot/utils/check-package -b $(BR_EXTERNAL)/package/*/*

.PHONY: mrproper
mrproper:
	rm -rf buildroot-$(BUILDROOT_VERSION)
	rm -rf buildroot
	rm -rf dl
	rm -rf site
	rm -rf mkdocs-material
	rm -rf output	
