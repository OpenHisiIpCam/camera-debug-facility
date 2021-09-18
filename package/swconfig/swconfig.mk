################################################################################
#
# swconfig
#
################################################################################

SWCONFIG_VERSION = local
SWCONFIG_SITE = $(SWCONFIG_PKGDIR)/src
SWCONFIG_SITE_METHOD = local
SWCONFIG_LICENSE = GPL-2.0
SWCONFIG_DEPENDENCIES = libnl

# redefine original CFLAGS as it points directly to /usr/include
SWCONFIG_MAKE_ENV = CC="$(TARGET_CC)" \
	CFLAGS="-I. -I$(STAGING_DIR)/usr/include/libnl3"

define SWCONFIG_BUILD_CMDS
	$(SWCONFIG_MAKE_ENV) $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define SWCONFIG_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) DESTDIR="$(TARGET_DIR)" $(MAKE) -C $(@D) install
endef

$(eval $(generic-package))
