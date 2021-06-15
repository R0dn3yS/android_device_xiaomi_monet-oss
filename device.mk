#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SHIPPING_API_LEVEL := 29

# Fingerprint
TARGET_HAS_FOD := true

# Inherit from sm7250-common
$(call inherit-product, device/xiaomi/sm7250-common/lito.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/monet/monet-vendor.mk)
