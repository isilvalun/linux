#!/bin/bash

export ARCH=arm64
export FEATURESET=none
export FLAVOUR=raspi
export PATH=/usr/lib/ccache:"$PATH"
export MAKEFLAGS="-j$(nproc) LOCALVERSION=-raspi"
export DEBIAN_KERNEL_DISABLE_DEBUG=yes
export KBUILD_DEBARCH=arm64
export TARGET_LIST=arm64
echo nice make $MAKEFLAGS ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- bindeb-pkg
nice make $MAKEFLAGS ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- bindeb-pkg

exit 0
