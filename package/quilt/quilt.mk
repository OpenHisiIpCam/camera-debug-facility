################################################################################
#
# quilt
#
################################################################################

QUILT_VERSION = 0.66
QUILT_SITE = https://download.savannah.gnu.org/releases/quilt
QUILT_AUTORECONF = YES

$(eval $(host-autotools-package))
