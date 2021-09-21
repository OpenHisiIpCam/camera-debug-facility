################################################################################
#
# ssd1306-demo
#
################################################################################

SSD1306_DEMO_VERSION = local
SSD1306_DEMO_SITE = $(SSD1306_PKGDIR)/src
SSD1306_DEMO_SITE_METHOD = local
SSD1306_DEMO_LICENSE = MIT
SSD1306_DEMO_LICENSE_FILES = LICENSE

define SSD1306_DEMO_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) CFLAGS="$(TARGET_CFLAGS)" -C $(@D)
endef

define SSD1306_DEMO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/oled_demo $(TARGET_DIR)/opt
endef

$(eval $(generic-package))
