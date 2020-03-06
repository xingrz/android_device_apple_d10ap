#
# Copyright (C) 2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from apple t8010-common
-include device/apple/t8010-common/BoardConfigCommon.mk

DEVICE_PATH := device/apple/d10ap

# HAX: Remove ASAP
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)
