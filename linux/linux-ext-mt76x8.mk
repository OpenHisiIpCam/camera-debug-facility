#
# Copyright (c) 2021 OpenHisiIpCam, info@openhisiipcam.org
# SPDX-License-Identifier: MIT
#
# TODO brief description
#

LINUX_DEPENDENCIES += host-quilt

define MT76X8_PREPARE_KERNEL
    # Common files
    cp -r $(BR2_EXTERNAL_CDF_MT76X8_PATH)/board/common/linux/files/* $(@D)
    cp -r $(BR2_EXTERNAL_CDF_MT76X8_PATH)/board/common/linux/dts/* $(@D)/arch/mips/boot/dts
    cp -r  $(BR2_EXTERNAL_CDF_MT76X8_PATH)/board/common/linux/patches $(@D)
    cd $(@D); $(HOST_DIR)/bin/quilt --quiltrc=- pop -a; $(HOST_DIR)/bin/quilt --quiltrc=- push -a

    # Dts from boards
    #cp -f  $(BR2_EXTERNAL_CDF_MT76X8_PATH)/board/common/linux/board/*/*.kernel.dts $(@D)/arch/mips/boot/dts
endef

LINUX_PRE_PATCH_HOOKS += MT76X8_PREPARE_KERNEL
