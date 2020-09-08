#
# Copyright (C) 2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from m1923 device
$(call inherit-product, device/meizu/m1923/device.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

####Tree credits go to XiNGRZ

PRODUCT_NAME := rr_m1923
PRODUCT_BRAND := meizu
PRODUCT_DEVICE := m1923
PRODUCT_MANUFACTURER := meizu
PRODUCT_MODEL := Note9

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="Note9" \
    PRODUCT_NAME="meizu_Note9_CN" \
    PRIVATE_BUILD_DESC="meizu_Note9_CN-user 9 PKQ1.181203.001 1575543729 release-keys"

BUILD_FINGERPRINT := meizu/meizu_Note9_CN/Note9:9/PKQ1.181203.001/1575543729:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=400
