#!/bin/bash

nice make -j$(nproc) LOCALVERSION=-raspi KDEB_PKGVERSION=$(make kernelversion)-1 ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- bindeb-pkg

exit 0
