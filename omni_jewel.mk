# Least specific includes go first, so that they can get
# overridden further down

# include the non-open-source counterpart to this file
-include vendor/htc/jewel/AndroidBoardVendor.mk

# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/custom/prebuilt/common/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/custom/config/common.mk)

# Inherit from jewel device
$(call inherit-product, $(LOCAL_DIR)/jewel.mk)

PRODUCT_NAME := omni_jewel
PRODUCT_DEVICE := jewel
PRODUCT_BRAND := htc
PRODUCT_MODEL := EVO
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jewel BUILD_ID=JRO03C BUILD_FINGERPRINT="htc/jewel/jewel:4.1.1/JRO03C/147243.3:user/release-keys" PRIVATE_BUILD_DESC="3.16.651.3 CL147243 release-keys"

# Release name
PRODUCT_RELEASE_NAME := jewel

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
