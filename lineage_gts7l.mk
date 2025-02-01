#
# SPDX-FileCopyrightText: 2024-2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from gts7l device
$(call inherit-product, device/samsung/gts7l/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

PRODUCT_NAME := lineage_gts7l
PRODUCT_DEVICE := gts7l
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T875
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_SYSTEM_NAME := gts7lxx

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gts7lxx-user 11 RP1A.200720.012 T875XXS8DXH1 release-keys" \
    TARGET_PRODUCT=gts7lxx

BUILD_FINGERPRINT := "samsung/gts7lxx/gts7l:11/RP1A.200720.012/T875XXS8DXH1:user/release-keys"
