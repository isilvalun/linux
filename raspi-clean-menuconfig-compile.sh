#!/bin/bash

rm -Rfv arch/arm/boot/dts/overlays/
export ARCH=arm64
export FEATURESET=none
export FLAVOUR=raspi
export PATH=/usr/lib/ccache:"$PATH"
export MAKEFLAGS="-j$(nproc) LOCALVERSION=-raspi ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-"
export DEBIAN_KERNEL_DISABLE_DEBUG=yes
export KBUILD_DEBARCH=arm64
export TARGET_LIST=arm64
make $MAKEFLAGS clean && make $MAKEFLAGS mrproper && git reset --hard
make $MAKEFLAGS menuconfig
make $MAKEFLAGS bindeb-pkg

exit 0
