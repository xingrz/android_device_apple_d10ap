#
# Copyright (C) 2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from d10ap device
$(call inherit-product, device/apple/d10ap/device.mk)

# Inherit some common MoKee stuff.
$(call inherit-product, vendor/mokee/config/common_full_phone.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.mk.maintainer=XiNGRZ

PRODUCT_NAME := mokee_d10ap
PRODUCT_BRAND := Apple
PRODUCT_DEVICE := d10ap
PRODUCT_MANUFACTURER := Apple
PRODUCT_MODEL := iPhone 7

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="d10ap"

PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=320
