# Least specific includes go first, so that they can get
# overridden further down

# include the non-open-source counterpart to this file
-include vendor/htc/jewel/AndroidBoardVendor.mk

# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/custom/prebuilt/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/custom/config/common.mk)

# Inherit from jewel device
$(call inherit-product, $(LOCAL_DIR)/jewel.mk)

PRODUCT_NAME := custom_jewel
PRODUCT_DEVICE := jewel
PRODUCT_BRAND := htc
PRODUCT_MODEL := EVO
PRODUCT_MANUFACTURER := HTC
