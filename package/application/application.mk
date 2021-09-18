################################################################################
#
# application
#
################################################################################

APPLICATION_VERSION = local
APPLICATION_SITE = $(BR2_EXTERNAL_CDF_MT76X8_PATH)/application
APPLICATION_SITE_METHOD = local
APPLICATION_LICENSE = MIT
APPLICATION_LICENSE_FILES = LICENSE
APPLICATION_DEPENDENCIES = libuv libwebsockets-custom libnl libconfig jbol
APPLICATION_SUPPORTS_IN_SOURCE_BUILD = NO

define APPLICATION_POST_INSTALL_TARGET_WWW
	mkdir -p $(TARGET_DIR)/var/www
	cp -r $(@D)/www/* $(TARGET_DIR)/var/www
endef

APPLICATION_POST_INSTALL_TARGET_HOOKS += APPLICATION_POST_INSTALL_TARGET_WWW

$(eval $(cmake-package))
