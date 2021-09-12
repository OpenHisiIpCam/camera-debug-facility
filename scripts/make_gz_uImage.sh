#!/usr/bin/env bash

if [ ! -f ${BINARIES_DIR}/vmlinux.bin.gz ]; then
	gzip -9 ${BINARIES_DIR}/vmlinux.bin
fi

if [ -f ${BINARIES_DIR}/vmlinux.bin.gz ]; then
	mkimage -A mips -T kernel -C gzip -O linux -a 0x80000000 -e 0x80000000 -n "Linux" -d ${BINARIES_DIR}/vmlinux.bin.gz ${BINARIES_DIR}/uImage
fi
