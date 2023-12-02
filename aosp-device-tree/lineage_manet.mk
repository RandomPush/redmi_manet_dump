#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from manet device
$(call inherit-product, device/xiaomi/manet/device.mk)

PRODUCT_DEVICE := manet
PRODUCT_NAME := lineage_manet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23117RK66C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="manet-user 14 UKQ1.230804.001 V816.0.4.0.UNMCNXM release-keys"

BUILD_FINGERPRINT := Redmi/manet/manet:14/UKQ1.230804.001/V816.0.4.0.UNMCNXM:user/release-keys
