################################################################################
#
# quilt
#
################################################################################

QUILT_VERSION = 0.66
#QUILT_SOURCE = quilt-$(QUILT_VERSION).tar.gz
QUILT_SITE = https://download.savannah.gnu.org/releases/quilt
QUILT_AUTORECONF = YES

$(eval $(host-autotools-package))
