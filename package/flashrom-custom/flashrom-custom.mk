################################################################################
#
# flashrom-last
#
################################################################################

FLASHROM_CUSTOM_VERSION = 87284a5
FLASHROM_CUSTOM_SITE = $(call github,flashrom,flashrom,$(FLASHROM_CUSTOM_VERSION))
FLASHROM_CUSTOM_LICENSE = GPL-2.0+
FLASHROM_CUSTOM_LICENSE_FILES = COPYING
FLASHROM_CUSTOM_INSTALL_TARGET = NO
FLASHROM_CUSTOM_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_LIBFTDI),y)
FLASHROM_CUSTOM_DEPENDENCIES += host-pkgconf libftdi
FLASHROM_CUSTOM_MAKE_OPTS += \
	CONFIG_FT2232_SPI=yes \
	CONFIG_USBBLASTER_SPI=yes
else
FLASHROM_CUSTOM_MAKE_OPTS += \
	CONFIG_FT2232_SPI=no \
	CONFIG_USBBLASTER_SPI=no
endif

ifeq ($(BR2_PACKAGE_LIBUSB),y)
FLASHROM_CUSTOM_DEPENDENCIES += host-pkgconf libusb
FLASHROM_CUSTOM_MAKE_OPTS += CONFIG_ENABLE_LIBUSB1_PROGRAMMERS=yes
else
FLASHROM_CUSTOM_MAKE_OPTS += CONFIG_ENABLE_LIBUSB1_PROGRAMMERS=no
endif

ifeq ($(BR2_PACKAGE_PCIUTILS),y)
FLASHROM_CUSTOM_DEPENDENCIES += pciutils
FLASHROM_CUSTOM_MAKE_OPTS += CONFIG_ENABLE_LIBPCI_PROGRAMMERS=yes
else
FLASHROM_CUSTOM_MAKE_OPTS += CONFIG_ENABLE_LIBPCI_PROGRAMMERS=no
endif

define FLASHROM_CUSTOM_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		CFLAGS="$(TARGET_CFLAGS) -DHAVE_STRNLEN" \
		$(FLASHROM_CUSTOM_MAKE_OPTS) -C $(@D)
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		CFLAGS="$(TARGET_CFLAGS) -DHAVE_STRNLEN" \
		$(FLASHROM_CUSTOM_MAKE_OPTS) -C $(@D) libflashrom.a
endef

define FLASHROM_CUSTOM_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/flashrom $(TARGET_DIR)/usr/sbin/flashrom
endef

#TODO !!!
define FLASHROM_CUSTOM_INSTALL_STAGING_CMDS
	#$(INSTALL) -m 0755 -D $(@D)/libflashrom.a $(STAGING_DIR)/usr/local/lib
	#$(INSTALL) -m 0755 -D $(@D)/libflashrom.h $(STAGING_DIR)/usr/local/include
endef

$(eval $(generic-package))
