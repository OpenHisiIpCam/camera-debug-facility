################################################################################
#
# linux-backports-custom
#
################################################################################

LINUX_BACKPORTS_CUSTOM_VERSION_MAJOR = 5.10.42
LINUX_BACKPORTS_CUSTOM_VERSION_MINOR = 1
LINUX_BACKPORTS_CUSTOM_VERSION = $(LINUX_BACKPORTS_CUSTOM_VERSION_MAJOR)-$(LINUX_BACKPORTS_CUSTOM_VERSION_MINOR)
LINUX_BACKPORTS_CUSTOM_SOURCE = backports-$(LINUX_BACKPORTS_CUSTOM_VERSION).tar.xz
LINUX_BACKPORTS_CUSTOM_SITE = https://cdn.kernel.org/pub/linux/kernel/projects/backports/stable/v$(LINUX_BACKPORTS_CUSTOM_VERSION_MAJOR)
LINUX_BACKPORTS_CUSTOM_INSTALL_STAGING = YES

LINUX_BACKPORTS_CUSTOM_DEPENDENCIES = \
	$(BR2_BISON_HOST_DEPENDENCY) \
	$(BR2_FLEX_HOST_DEPENDENCY)

define LINUX_BACKPORTS_CUSTOM_POST_EXTRACT_FIXUP
	cp -r $(BR2_EXTERNAL_CDF_MT76X8_PATH)/board/common/backports/patches $(@D)
	cd $(@D); $(HOST_DIR)/bin/quilt --quiltrc=- pop -a; $(HOST_DIR)/bin/quilt --quiltrc=- push -a
endef

LINUX_BACKPORTS_CUSTOM_POST_EXTRACT_HOOKS += LINUX_BACKPORTS_CUSTOM_POST_EXTRACT_FIXUP

LINUX_BACKPORTS_CUSTOM_MAKE_OPTS = \
	LEX=flex \
	YACC=bison \
	BACKPORT_DIR=$(@D) \
	KLIB_BUILD=$(LINUX_DIR) \
	KLIB=$(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED) \
	INSTALL_MOD_DIR=backports \
	`sed -r -e '/^\#/d;' $(@D)/.config`

LINUX_BACKPORTS_CUSTOM_KCONFIG_OPTS = $(LINUX_BACKPORTS_CUSTOM_MAKE_OPTS)
# TODO make config.in param
LINUX_BACKPORTS_CUSTOM_KCONFIG_FILE = $(BR2_EXTERNAL_CDF_MT76X8_PATH)/board/common/backports/.config
LINUX_BACKPORTS_CUSTOM_MODULE_MAKE_OPTS = $(LINUX_BACKPORTS_CUSTOM_MAKE_OPTS)

define LINUX_BACKPORTS_CUSTOM_KCONFIG_FIXUP_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) $(LINUX_BACKPORTS_CUSTOM_MAKE_OPTS) backport-include/backport/autoconf.h
endef

define LINUX_BACKPORTS_CUSTOM_POST_INSTALL_STAGING_FIXUP
	mkdir -p $(STAGING_DIR)/usr/include/mac80211
	mkdir -p $(STAGING_DIR)/usr/include/mac80211-backport

	cp -r $(@D)/include/* $(STAGING_DIR)/usr/include/mac80211
	cp -r $(@D)/backport-include/* $(STAGING_DIR)/usr/include/mac80211-backport
endef

# TODO Find proper hook for kernel-module
LINUX_BACKPORTS_CUSTOM_POST_INSTALL_STAGING_HOOKS += LINUX_BACKPORTS_CUSTOM_POST_INSTALL_STAGING_FIXUP

$(eval $(kernel-module))
$(eval $(kconfig-package))
