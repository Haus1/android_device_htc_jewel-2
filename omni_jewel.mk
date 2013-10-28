# Least specific includes go first, so that they can get
# overridden further down

# include the non-open-source counterpart to this file
#-include vendor/htc/jewel/AndroidBoardVendor.mk

# CDMA APN list
$(call inherit-product, vendor/omni/config/cdma.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from jewel device
$(call inherit-product, device/htc/jewel/device.mk)

PRODUCT_NAME := omni_jewel
PRODUCT_DEVICE := jewel
PRODUCT_BRAND := htc
PRODUCT_MODEL := EVO
PRODUCT_MANUFACTURER := htc
