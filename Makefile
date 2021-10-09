#
# Copyright (c) 2021 OpenHisiIpCam, info@openhisiipcam.org
# SPDX-License-Identifier: MIT
#
# TODO brief description
#

BR_EXTERNAL = $(abspath .)
PROGRAMMER = ch341a_spi

.PHONY: usage
usage:
	@echo "TODO"

vendors/buildroot:
	make -C vendors buildroot

.PHONY: list-defconfigs
list-defconfigs: vendors/buildroot
	make \
                -C $(abspath vendors/buildroot) \
                BR2_EXTERNAL=$(BR_EXTERNAL) \
                list-defconfigs

.PHONY: %_defconfig
%_defconfig: vendors/buildroot
	@test -f ./configs/$@ || (echo "Config $@ does not exist"; exit 1)
	make \
                -C $(abspath vendors/buildroot) \
                BR2_EXTERNAL=$(abspath $(BR_EXTERNAL)) \
                O=$(abspath output/$(subst _defconfig,,$@)) \
                $@

docker-build:
	docker build -t local/camera-debug-facility:last .

docker-run:
	docker run -it -v $(abspath .):/home/user/camera-debug-facility --entrypoint "/bin/bash" local/camera-debug-facility:last 

pack-dl:
	tar -cvf dl.tar ./dl

vendors/flashrom/flashrom:
	make -C vendors flashrom

flashrom16: vendors/flashrom/flashrom
	vendors/flashrom/flashrom --programmer $(PROGRAMMER) -w output/camera-debug-facility/images/spi16MB.img

flashrom32: vendors/flashrom/flashrom
	vendors/flashrom/flashrom --programmer $(PROGRAMMER) -w output/camera-debug-facility/images/spi32MB.img

# Run BR utils/check-package on all custom packages
.IGNORE: check-packages
check-packages: vendors/buildroot
	vendors/buildroot/utils/check-package -b $(BR_EXTERNAL)/package/*/*

.PHONY: mrproper
mrproper:
	make -C vendors clean
	rm -rf dl
	rm -rf site
	rm -rf mkdocs-material
	rm -rf output	
