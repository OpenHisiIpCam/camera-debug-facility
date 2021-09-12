################################################################################
#
# mt76-mac80211
#
################################################################################

MT76_MAC80211_VERSION = 22b69033
MT76_MAC80211_SITE = $(call github,openwrt,mt76,$(MT76_MAC80211_VERSION))
MT76_MAC80211_DEPENDENCIES = linux-backports-custom wireless-regdb

MT76_MAC80211_MAKE_FLAGS += CONFIG_MT76_USB=n
MT76_MAC80211_MAKE_FLAGS += CONFIG_MT76x02_LIB=n
MT76_MAC80211_MAKE_FLAGS += CONFIG_MT76x02_USB=n
MT76_MAC80211_MAKE_FLAGS += CONFIG_MT76x0_COMMON=n
MT76_MAC80211_MAKE_FLAGS += CONFIG_MT76x0E=n
MT76_MAC80211_MAKE_FLAGS += CONFIG_MT76x0U=n
MT76_MAC80211_MAKE_FLAGS += CONFIG_MT76x2_COMMON=n
MT76_MAC80211_MAKE_FLAGS += CONFIG_MT76x2E=n
MT76_MAC80211_MAKE_FLAGS += CONFIG_MT76x2U=n
MT76_MAC80211_MAKE_FLAGS += CONFIG_MT7603E=m
MT76_MAC80211_MAKE_FLAGS += CONFIG_MT7615E=n

MT76_MAC80211_MAKE_OPTS = -I$(@D) \
			  -I$(STAGING_DIR)/usr/include/mac80211-backport \
			  -I$(STAGING_DIR)/usr/include/mac80211-backport/uapi \
			  -I$(STAGING_DIR)/usr/include/mac80211 \
			  -I$(STAGING_DIR)/usr/include/mac80211/uapi \
			  -include backport/autoconf.h -include backport/backport.h -DCONFIG_MAC80211_MESH

# Here we point to backports Module.symvers
# Some other way should be found
# in order to decouple mt76 build from backports
MT76_MAC80211_MODULE_MAKE_OPTS = NOSTDINC_FLAGS="$(MT76_MAC80211_MAKE_OPTS)" \
				 $(MT76_MAC80211_MAKE_FLAGS) \
				 KBUILD_EXTRA_SYMBOLS="$(BUILD_DIR)/linux-backports-custom-$(LINUX_BACKPORTS_CUSTOM_VERSION_MAJOR)-$(LINUX_BACKPORTS_CUSTOM_VERSION_MINOR)/Module.symvers"

$(eval $(kernel-module))

define MT76_MAC80211_POST_BUILD_FIXUP
	mkdir -p $(TARGET_DIR)/lib/firmware
	cp $(@D)/firmware/mt7628_e1.bin $(TARGET_DIR)/lib/firmware
	cp $(@D)/firmware/mt7628_e2.bin $(TARGET_DIR)/lib/firmware
endef

MT76_MAC80211_POST_BUILD_HOOKS += MT76_MAC80211_POST_BUILD_FIXUP

$(eval $(generic-package))
