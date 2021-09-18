################################################################################
#
# jbol
#
################################################################################

JBOL_VERSION = 1.6.0
JBOL_SITE = $(call github,fadado,JBOL,v$(JBOL_VERSION))
JBOL_LICENSE = MIT
JBOL_LICENSE_FILES = LICENSE
JBOL_DEPENDENCIES = jq

$(eval $(generic-package))
