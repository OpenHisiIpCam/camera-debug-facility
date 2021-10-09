# Factory boot log

```console
nikita@nikita-System-Product-Name:/mnt/storage$ picocom -b 57600 /dev/ttyUSB0
picocom v3.1

port is        : /dev/ttyUSB0
flowcontrol    : none
baudrate is    : 57600
parity is      : none
databits are   : 8
stopbits are   : 1
escape is      : C-a
local echo is  : no
noinit is      : no
noreset is     : no
hangup is      : no
nolock is      : no
send_cmd is    : sz -vv
receive_cmd is : rz -vv -E
imap is        : 
omap is        : 
emap is        : crcrlf,delbs,
logfile is     : none
initstring     : none
exit_after is  : not set
exit is        : no

Type [C-a] [C-h] to see available commands
Terminal ready
flash manufacture id: ef, device id 40 19
info id : ef info->jedec_id :40160000 buf[1]:40 buf[2]:19
info id : ef info->jedec_id :40170000 buf[1]:40 buf[2]:19
info id : ef info->jedec_id :40180000 buf[1]:40 buf[2]:19
info id : ef info->jedec_id :40190000 buf[1]:40 buf[2]:19
find flash: W25Q256FV
*** Warning - bad CRC, using default environment

============================================ 
Ralink UBoot Version: 1.0
-------------------------------------------- 
ASIC 7628_MP (Port5<->None)
DRAM component: 1024 Mbits DDR, width 16
DRAM bus: 16 bit
Total memory: 128 MBytes
Flash component: SPI Flash
Date:May 23 2020  Time:14:42:28
============================================ 
icache: sets:512, ways:4, linesz:32 ,total:65536
dcache: sets:256, ways:4, linesz:32 ,total:32768 
RESET MT7628 PHY!!!!!!


  _    _   _        _  __  ______     __    ___     ___    _   _   
 | |  | | | |      | |/ / |____  |   / /   |__ \   / _ \  | \ | |  
 | |__| | | |      | ' /      / /   / /_      ) | | (_) | |  \| |  
 |  __  | | |      |  <      / /   | '_ \    / /   > _ <  | . ` |  
 | |  | | | |____  | . \    / /    | (_) |  / /_  | (_) | | |\  |  
 |_|  |_| |______| |_|\_\  /_/      \___/  |____|  \___/  |_| \_|  
-------------------------------------------------------------------------
             https://github.com/gnubee-git
-------------7628N build May 23 2020 14:42:28--------------------
-------------------------------------------------------------------------

Please choose the operation: 
   1: Load system code to SDRAM via TFTP. 
   2: Load system code then write to Flash via TFTP. 
   3: Boot system code via Flash (default).
   4: Entr boot command line interface.
   5: Load system code then write to Flash via Httpd.
   7: Load Boot Loader code then write to Flash via Serial. 
   9: Load Boot Loader code then write to Flash via TFTP. 
 0 
   
3: System Boot system code via Flash.
## Booting image at bc050000 ...
   Image Name:   OpenWrt Linux-3.10.14
   Image Type:   MIPS Linux Kernel Image (lzma compressed)
   Data Size:    1274036 Bytes =  1.2 MB
   Load Address: 80000000
   Entry Point:  80000000
   Verifying Checksum ... OK
   Uncompressing Kernel Image ... OK
No initrd
## Transferring control to Linux (at address 80000000) ...
## Giving linux memsize in MB, 128

Starting kernel ...


LINUX started...

 THIS IS ASIC

SDK 5.0.S.0
[    0.000000] Linux version 3.10.14 (luke@ub) (gcc version 4.8.3 (OpenWrt/Linaro GCC 4.8-2014.04 unknown) ) #5 Sat May 23 11:56:08 CST 2020
[    0.000000] 
[    0.000000]  The CPU feqenuce set to 575 MHz
[    0.000000] CPU0 revision is: 00019655 (MIPS 24KEc)
[    0.000000] Software DMA cache coherency
[    0.000000] Determined physical RAM map:
[    0.000000]  memory: 08000000 @ 00000000 (usable)
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x00000000-0x07ffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x00000000-0x07ffffff]
[    0.000000] Primary instruction cache 64kB, 4-way, VIPT, linesize 32 bytes.
[    0.000000] Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 32512
[    0.000000] Kernel command line: console=ttyS1,57600n8 root=/dev/mtdblock5 rootfstype=squashfs,jffs2
[    0.000000] PID hash table entries: 512 (order: -1, 2048 bytes)
[    0.000000] Dentry cache hash table entries: 16384 (order: 4, 65536 bytes)
[    0.000000] Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
[    0.000000] Writing ErrCtl register=0000000f
[    0.000000] Readback ErrCtl register=0000000f
[    0.000000] Memory: 126060k/131072k available (2774k kernel code, 5012k reserved, 696k data, 176k init, 0k highmem)
[    0.000000] NR_IRQS:128
[    0.000000] console [ttyS1] enabled
[    0.096000] Calibrating delay loop... 382.46 BogoMIPS (lpj=764928)
[    0.128000] pid_max: default: 32768 minimum: 301
[    0.132000] Mount-cache hash table entries: 512
[    0.136000] NET: Registered protocol family 16
[    0.140000] RALINK_GPIOMODE = 54054404 
[    0.144000] RALINK_GPIOMODE = 54044404 
[    0.244000] ***** Xtal 40MHz *****
[    0.248000] start PCIe register access
[    0.748000] RALINK_RSTCTRL = 2400000
[    0.752000] RALINK_CLKCFG1 = fdbfffc0
[    0.756000] 
[    0.756000] *************** MT7628 PCIe RC mode *************
[    1.256000] PCIE0 no card, disable it(RST&CLK)
[    1.284000] bio: create slab <bio-0> at 0
[    1.288000] usbcore: registered new interface driver usbfs
[    1.292000] usbcore: registered new interface driver hub
[    1.296000] usbcore: registered new device driver usb
[    1.300000] Switching to clocksource MIPS
[    1.304000] NET: Registered protocol family 2
[    1.316000] TCP established hash table entries: 1024 (order: 1, 8192 bytes)
[    1.328000] TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
[    1.340000] TCP: Hash tables configured (established 1024 bind 1024)
[    1.356000] TCP: reno registered
[    1.360000] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    1.372000] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    1.384000] NET: Registered protocol family 1
[    1.396000] MTK/Ralink EHCI/OHCI init.
[    1.404000] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    1.416000] jffs2: version 2.2. (NAND) (SUMMARY)  (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    1.436000] msgmni has been set to 246
[    1.444000] io scheduler noop registered (default)
[    1.464000] Serial: 8250/16550 driver, 2 ports, IRQ sharing disabled
[    1.476000] serial8250: ttyS0 at MMIO 0x10000d00 (irq = 21) is a 16550A
[    1.488000] serial8250: ttyS1 at MMIO 0x10000c00 (irq = 20) is a 16550A
[    1.504000] Ralink gpio driver initialized
[    1.512000] flash manufacture id: ef, device id 40 19
[    1.524000] W25Q256FV(ef 40190000) (32768 Kbytes)
[    1.532000] mtd .name = raspi, .size = 0x02000000 (32M) .erasesize = 0x00010000 (64K) .numeraseregions = 0
[    1.552000] Creating 5 MTD partitions on "raspi":
[    1.564000] 0x000000000000-0x000002000000 : "ALL"
[    1.572000] 0x000000000000-0x000000030000 : "Bootloader"
[    1.584000] 0x000000030000-0x000000040000 : "Config"
[    1.596000] 0x000000040000-0x000000050000 : "Factory"
[    1.608000] 0x000000050000-0x000002000000 : "firmware"
[    1.620000] 0x0000001870f4-0x000002000000 : "rootfs"
[    1.632000] mtd: partition "rootfs" must either start or end on erase block boundary or be smaller than an erase block -- forcing read-only
[    1.656000] mtd: partition "rootfs_data" created automatically, ofs=0x490000, len=0x1b70000
[    1.672000] 0x000000490000-0x000002000000 : "rootfs_data"
[    1.688000] GMAC1_MAC_ADRH -- : 0x00004401
[    1.696000] GMAC1_MAC_ADRL -- : 0xbb89ee27
[    1.704000] Ralink APSoC Ethernet Driver Initilization. v3.1  512 rx/tx descriptors allocated, mtu = 1500!
[    1.720000] GMAC1_MAC_ADRH -- : 0x00004401
[    1.732000] GMAC1_MAC_ADRL -- : 0xbb89ee27
[    1.740000] PROC INIT OK!
[    1.744000] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.756000] ehci-pci: EHCI PCI platform driver
[    1.768000] ehci-platform: EHCI generic platform driver
[    1.796000] ******MT7628 mtk phy
[    1.804000] *****run project phy.
[    1.820000] FM_OUT value: u4FmOut = 0(0x00000000)
[    1.836000] FM_OUT value: u4FmOut = 127(0x0000007F)
[    1.844000] FM detection done! loop = 1
[    1.860000] SR calibration value u1SrCalVal = 6
[    1.868000] *********Execute mt7628_phy_init!!
[    1.876000] ehci-platform ehci-platform: EHCI Host Controller
[    1.888000] ehci-platform ehci-platform: new USB bus registered, assigned bus number 1
[    1.904000] ehci-platform ehci-platform: irq 18, io mem 0x101c0000
[    1.928000] ehci-platform ehci-platform: USB 2.0 started, EHCI 1.00
[    1.940000] hub 1-0:1.0: USB hub found
[    1.948000] hub 1-0:1.0: 1 port detected
[    1.956000] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.988000] *********Execute mt7628_phy_init!!
[    1.996000] ohci-platform ohci-platform: Generic Platform OHCI Controller
[    2.012000] ohci-platform ohci-platform: new USB bus registered, assigned bus number 2
[    2.028000] ohci-platform ohci-platform: irq 18, io mem 0x101c1000
[    2.100000] hub 2-0:1.0: USB hub found
[    2.108000] hub 2-0:1.0: 1 port detected
[    2.116000] gre: GRE over IPv4 demultiplexor driver
[    2.124000] TCP: cubic registered
[    2.132000] NET: Registered protocol family 10
[    2.144000] NET: Registered protocol family 17
[    2.152000] 8021q: 802.1Q VLAN Support v1.8
[    2.160000] registered taskstats version 1
[    2.176000] VFS: Mounted root (squashfs filesystem) readonly on device 31:5.
[    2.192000] Freeing unused kernel memory: 176K (80364000 - 80390000)
procd: Console is alive
[    4.396000] SCSI subsystem initialized
[    4.412000] usbcore: registered new interface driver usb-storage
procd: - preinit -
[    5.376000] 44: 1:FFFFFFBB:FFFFFF89:FFFFFFEE:27
[    5.388000] Raeth v3.1 (Tasklet,SkbRecycle)
[    5.396000] 
[    5.396000] phy_tx_ring = 0x070ca000, tx_ring = 0xa70ca000
[    5.412000] 
[    5.412000] phy_rx_ring0 = 0x070cc000, rx_ring0 = 0xa70cc000
[    5.440000] GMAC1_MAC_ADRH -- : 0x00004401
[    5.448000] GMAC1_MAC_ADRL -- : 0xbb89ee27
[    5.456000] RT305x_ESW: Link Status Changed
Press the [f] key and hit [enter] to enter failsafe mode
Press the [1], [2], [3] or [4] key and hit [enter] to select the debug level
[    9.020000] block: attempting to load /etc/config/fstab
[    9.108000] block: extroot: not configured
uci: Entry not found
uci: Entry not found
OPTIMIZED_FOR -> wifi
NUM_OF_CPU -> 1
wifiDomain1 -> 
wifiDomain2 -> 
CONFIG_RALINK_MT7621 -[    9.332000] ra2880stop()...> 
CONFIG_ARCH_Done
MT7623 -> 
jffs[    9.344000] Free TX/RX Ring Memory!
2 is not ready - marker found
procd: - early -
procd: - ubus -
procd: - init -
Please press Enter to activate this console.
[   11.348000] u32 classifier
[   11.352000]     input device check on
[   11.360000]     Actions configured
[   11.392000] Mirror/redirect action on
[   11.436000] cfg80211: Calling CRDA to update world regulatory domain
[   11.452000] ip_tables: (C) 2000-2006 Netfilter Core Team
[   11.460000] Type=Linux
[   11.504000] nf_conntrack version 0.5.0 (1972 buckets, 7888 max)
[   11.540000] rdm_major = 253
[   11.588000] xt_time: kernel timezone is -0000
[   11.604000] PPP generic driver version 2.4.2
[   11.616000] NET: Registered protocol family 24
[   16.364000] 44: 1:FFFFFFBB:FFFFFF89:FFFFFFEE:27
[   16.372000] Raeth v3.1 (Tasklet,SkbRecycle)
[   16.384000] 
[   16.384000] phy_tx_ring = 0x072ea000, tx_ring = 0xa72ea000
[   16.400000] 
[   16.400000] phy_rx_ring0 = 0x072ec000, rx_ring0 = 0xa72ec000
[   16.428000] GMAC1_MAC_ADRH -- : 0x00004401
[   16.436000] GMAC1_MAC_ADRL -- : 0xbb89ee27
[   16.444000] RT305x_ESW: Link Status Changed
[   16.496000] device eth0.1 entered promiscuous mode
[   16.504000] device eth0 entered promiscuous mode
[   16.536000] br-lan: port 1(eth0.1) entered forwarding state
[   16.548000] br-lan: port 1(eth0.1) entered forwarding state
[   18.552000] br-lan: port 1(eth0.1) entered forwarding state
[   19.952000] 
[   19.952000] 
[   19.952000] === pAd = c08b7000, size = 1460128 ===
[   19.952000] 
[   19.968000] <-- RTMPAllocTxRxRingMemory, Status=0, ErrorValue=0x
[   19.984000] <-- RTMPAllocAdapterBlock, Status=0
[   19.992000] RtmpChipOpsHook(492): Not support for HIF_MT yet!
[   20.004000] mt7628_init()-->
[   20.008000] mt7628_init(FW(8a00), HW(8a01), CHIPID(7628))
[   20.020000] e2.bin mt7628_init(1117)::(2), pChipCap->fw_len(63056)
[   20.032000] mt_bcn_buf_init(218): Not support for HIF_MT yet!
[   20.044000] <--mt7628_init()
[   20.132000] TX_BCN DESC a6769000 size = 320
[   20.144000] RX[0] DESC a676b000 size = 2048
[   20.152000] RX[1] DESC a676c000 size = 1024
[   20.264000] E2pAccessMode=2
[   20.272000] cfg_mode=9
[   20.276000] cfg_mode=9
[   20.280000] wmode_band_equal(): Band Equal!
[   20.292000] APSDCapable[0]=1
[   20.300000] APSDCapable[1]=1
[   20.304000] APSDCapable[2]=1
[   20.308000] APSDCapable[3]=1
[   20.316000] APSDCapable[4]=1
[   20.320000] APSDCapable[5]=1
[   20.328000] APSDCapable[6]=1
[   20.332000] APSDCapable[7]=1
[   20.340000] APSDCapable[8]=1
[   20.344000] APSDCapable[9]=1
[   20.352000] APSDCapable[10]=1
[   20.356000] APSDCapable[11]=1
[   20.360000] APSDCapable[12]=1
[   20.368000] APSDCapable[13]=1
[   20.372000] APSDCapable[14]=1
[   20.380000] APSDCapable[15]=1
[   20.384000] default ApCliAPSDCapable[0]=1
[   20.392000] default ApCliAPSDCapable[1]=1
[   20.600000] Key1Str is Invalid key length(0) or Type(0)
[   20.612000] Key2Str is Invalid key length(0) or Type(0)
[   20.624000] Key3Str is Invalid key length(0) or Type(0)
[   20.636000] Key4Str is Invalid key length(0) or Type(0)
[   20.700000] RTMPSetDefaultChannel() : default channel to 1 
[   20.712000] load fw image from fw_header_image
[   20.720000] AndesMTLoadFwMethod1(2174)::pChipCap->fw_len(63056)
[   20.732000] FW Version:_e2_mp
[   20.740000] FW Build Date:20150211175503
[   20.748000] CmdAddressLenReq:(ret = 0)
[   20.756000] CmdFwStartReq: override = 1, address = 1048576
[   20.768000] CmdStartDLRsp: WiFI FW Download Success
[   21.112000] MtAsicDMASchedulerInit(): DMA Scheduler Mode=0(LMAC)
[   21.124000] efuse_probe: efuse = 10000012
[   21.132000] RtmpChipOpsEepromHook::e2p_type=2, inf_Type=4
[   21.140000] RtmpEepromGetDefault::e2p_dafault=2
[   21.148000] RtmpChipOpsEepromHook: E2P type(2), E2pAccessMode = 2, E2P default = 2
[   21.164000] NVM is FLASH mode
[   21.172000] 1. Phy Mode = 14
[   21.344000] Country Region from e2p = ffff
[   21.356000] tssi_1_target_pwr_g_band = 31
[   21.364000] 2. Phy Mode = 14
[   21.368000] 3. Phy Mode = 14
[   21.372000] NICInitPwrPinCfg(11): Not support for HIF_MT yet!
[   21.384000] NICInitializeAsic(651): Not support rtmp_mac_sys_reset () for HIF_MT yet!
[   21.400000] mt_mac_init()-->
[   21.408000] MtAsicInitMac()-->
[   21.416000] mt7628_init_mac_cr()-->
[   21.420000] MtAsicSetMacMaxLen(1241): Set the Max RxPktLen=1024!
[   21.432000] <--mt_mac_init()
[   21.440000] 	WTBL Segment 1 info:
[   21.444000] 		MemBaseAddr/FID:0x28000/0
[   21.452000] 		EntrySize/Cnt:32/128
[   21.460000] 	WTBL Segment 2 info:
[   21.468000] 		MemBaseAddr/FID:0x40000/0
[   21.476000] 		EntrySize/Cnt:64/128
[   21.480000] 	WTBL Segment 3 info:
[   21.488000] 		MemBaseAddr/FID:0x42000/64
[   21.496000] 		EntrySize/Cnt:64/128
[   21.504000] 	WTBL Segment 4 info:
[   21.508000] 		MemBaseAddr/FID:0x44000/128
[   21.516000] 		EntrySize/Cnt:32/128
[   21.524000] AntCfgInit(2876): Not support for HIF_MT yet!
[   21.672000] CmdSlotTimeSet:(ret = 0)
[   21.784000] MCS Set = ff ff 00 00 01
[   21.788000] MtAsicSetChBusyStat(826): Not support for HIF_MT yet!
[   24.820000] [PMF]ap_pmf_init:: apidx=0, MFPC=0, MFPR=0, SHA256=0
[   24.832000] [PMF]RTMPMakeRsnIeCap: RSNIE Capability MFPC=0, MFPR=0
[   24.848000] MtAsicSetRalinkBurstMode(2919): Not support for HIF_MT yet!
[   24.860000] MtAsicSetPiggyBack(763): Not support for HIF_MT yet!
[   24.924000] MtAsicSetTxPreamble(2898): Not support for HIF_MT yet!
[   24.940000] MtAsicAddSharedKeyEntry(1308): Not support for HIF_MT yet!
[   24.952000] The 4-BSSID mode is enabled, the BSSID byte5 MUST be the multiple of 4
[   24.968000] MtAsicSetPreTbtt(): bss_idx=0, PreTBTT timeout = 0xf0
[   24.980000] Main bssid = 44:01:bb:89:ee:26
[   24.988000] <==== rt28xx_init, Status=0
[   25.020000] RT28xx_Monitor_Init: 764 !!!!####!!!!!!
[   25.032000] mt7628_set_ed_cca: TURN OFF EDCCA  mac 0x10618 = 0xd7083f0f
[   25.048000] WiFi Startup Cost (ra0): 4.916s
[   26.584000] device ra0 entered promiscuous mode
[   26.596000] br-lan: port 2(ra0) entered forwarding state
[   26.604000] br-lan: port 2(ra0) entered forwarding state
[   27.732000] jffs2_scan_eraseblock(): End of filesystem marker found at 0x0
[   27.752000] jffs2_build_filesystem(): unlocking the mtd device... done.
[   27.764000] jffs2_build_filesystem(): erasing all blocks after the end marker... [   28.608000] br-lan: port 2(ra0) entered forwarding state



BusyBox v1.22.1 (2020-05-22 17:37:32 CST) built-in shell (ash)
Enter 'help' for a list of built-in commands.

  _______                     ________        __
 |       |.-----.-----.-----.|  |  |  |.----.|  |_
 |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
 |_______||   __|_____|__|__||________||__|  |____|
          |__| W I R E L E S S   F R E E D O M
 -----------------------------------------------------
 BARRIER BREAKER (Barrier Breaker, unknown)
 -----------------------------------------------------
  * 1/2 oz Galliano         Pour all ingredients into
  * 4 oz cold Coffee        an irish coffee mug filled
  * 1 1/2 oz Dark Rum       with crushed ice. Stir.
  * 2 tsp. Creme de Cacao
 -----------------------------------------------------
root@OpenWrt:/# 
root@OpenWrt:/# 
root@OpenWrt:/# 
```
