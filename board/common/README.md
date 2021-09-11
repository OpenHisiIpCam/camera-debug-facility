# OpenWRT BSP extract

linux-5.4.143

---

wget https://github.com/openwrt/openwrt/archive/refs/tags/v21.02.0.tar.gz
unpack
./scripts/feeds update -a
./scripts/feeds install -a
make

make target/linux/prepare  QUILT=1 V=s
```
nikita@nikita-ThinkPad-T450:~/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0$ make target/linux/prepare  QUILT=1 V=s
make[1]: Entering directory '/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0'
make[2]: Entering directory '/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/target/linux'
make[3]: Entering directory '/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/target/linux/ramips'
rm -rf /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8
mkdir -p /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8
xzcat /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/dl/linux-5.4.143.tar.xz | tar -C /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8 -xf -
rm -rf /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/linux-5.4.143/patches; mkdir -p /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/linux-5.4.143/patches
cp -fpR "/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/target/linux/generic/files"/. "/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/target/linux/ramips/files"/. /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/linux-5.4.143/
find /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/linux-5.4.143/ -name \*.rej -or -name \*.orig | xargs -r rm -f
if [ -d /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/target/linux/generic/patches ]; then echo "generic patches directory is present. please move your patches to the pending directory" ; exit 1; fi
touch /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/linux-5.4.143/.quilt_used
touch /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/linux-5.4.143/.prepared
make[3]: Leaving directory '/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/target/linux/ramips'
make[2]: Leaving directory '/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/target/linux'
time: target/linux/prepare#11.18#3.58#11.74
make[1]: Leaving directory '/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0'
```


TODO HOWTO dts
TODO HOWTO files

build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/linux-5.4.143/patches

build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/patches
```
nikita@nikita-ThinkPad-T450:~/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0$ make package/kernel/mac80211/prepare  QUILT=1 V=s
make[1]: Entering directory '/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0'
make[2]: Entering directory '/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/package/kernel/mac80211'
mkdir -p /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/dl
SHELL= flock /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/tmp/.backports-5.10.42-1.tar.xz.flock -c '  	/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/scripts/download.pl "/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/dl" "backports-5.10.42-1.tar.xz" "6876520105240844fdb32d1dcdf2bfdea291a37a96f16c892fda3776ba714fcb" "" "@KERNEL/linux/kernel/projects/backports/stable/v5.10.42/"    '
touch /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/.prepared_check
rm -rf /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1
mkdir -p /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1
. /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/include/shell.sh; xzcat /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/dl/backports-5.10.42-1.tar.xz | tar -C /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/.. -xf -
rm -rf /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/patches; mkdir -p /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/patches
touch /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/.quilt_used
tar -C /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1 -xzf /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/dl/ipw2100-fw-1.3.tgz
tar -C /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1 -xzf /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/dl/ipw2200-fw-3.1.tgz
tar -C /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1 -xjf /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/dl/zd1211-firmware-1.4.tar.bz2
rm -rf /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/include/linux/ssb /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/include/linux/bcma /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/include/net/bluetooth
rm -f /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/include/linux/cordic.h /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/include/linux/crc8.h /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/include/linux/eeprom_93cx6.h /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/include/linux/wl12xx.h /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/include/linux/spi/libertas_spi.h /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/include/net/ieee80211.h /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/backport-include/linux/bcm47xx_nvram.h
echo 'compat-wireless-5.10.42-1-1-r16279-5cc0535800' > /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/compat_version
touch /home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/build_dir/target-mipsel_24kc_musl/linux-ramips_mt76x8/backports-5.10.42-1/.prepared
make[2]: Leaving directory '/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0/package/kernel/mac80211'
time: package/kernel/mac80211/prepare#1.34#0.35#1.55
make[1]: Leaving directory '/home/nikita/ohic/REPO/camera-debug-facility/tmp/openwrt-21.02.0'
```


