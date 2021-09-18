#!/bin/sh

mount -t jffs2 /dev/mtdblock6 /user

mkdir -p /user/root
mkdir -p /user/work
mount -t overlay overlay \
        -o lowerdir=/,upperdir=/user/root,workdir=/user/work \
	/mnt

pivot_root /mnt /mnt/mnt/rootfs
mount -o noatime,move /mnt/rootfs/proc /proc
mount -o noatime,move /mnt/rootfs/dev /dev
mount -o noatime,move /mnt/rootfs/user /user
mount -o noatime,move /mnt/rootfs/tmp /tmp
mount -o noatime,move /mnt/rootfs/run /run
mount -o noatime,move /mnt/rootfs/sys /sys
