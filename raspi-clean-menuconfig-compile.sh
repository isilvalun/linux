#!/bin/bash

export MAKEFLAGS="-j$(nproc) DEBIAN_KERNEL_DISABLE_DEBUG=yes KBUILD_DEBARCH=arm64 KERNELRELEASE= TARGET_LIST=arm64 ARCH=arm64 FLAVOUR=raspi FEATURESET=none CROSS_COMPILE=aarch64-linux-gnu-"
rm -Rfv arch/arm/boot/dts/overlays/
make $MAKEFLAGS clean && make $MAKEFLAGS mrproper && git reset --hard
export PATH=/usr/lib/ccache:"$PATH"
make $MAKEFLAGS menuconfig
make $MAKEFLAGS bindeb-pkg

exit 0
