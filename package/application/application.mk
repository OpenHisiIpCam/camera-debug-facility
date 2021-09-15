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
APPLICATION_DEPENDENCIES = libuv libwebsockets libnl libconfig
APPLICATION_SUPPORTS_IN_SOURCE_BUILD = NO

$(eval $(cmake-package))
