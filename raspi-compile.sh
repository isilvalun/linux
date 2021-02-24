#!/bin/bash

export MAKEFLAGS="-j$(nproc) DEBIAN_KERNEL_DISABLE_DEBUG=yes KBUILD_DEBARCH=arm64 KBUILD_BUILD_VERSION=2 KERNELRELEASE=5.11.0-rc6-raspi TARGET_LIST=arm64 LOCALVERSION=-raspi ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-"
export ARCH=arm64
export FEATURESET=none
export FLAVOUR=raspi
export PATH=/usr/lib/ccache:"$PATH"
export DEBIAN_KERNEL_DISABLE_DEBUG=yes
export KBUILD_DEBARCH=arm64
export KBUILD_BUILD_VERSION=2
export KERNELRELEASE=5.11.0-rc6-raspi
export TARGET_LIST=arm64
make $MAKEFLAGS bindeb-pkg

exit 0
