$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/lge/p500/device.mk)
$(call inherit-product-if-exists, vendor/lge/p500/p500-vendor.mk)
$(call inherit-product-if-exists, vendor/google/gapps.mk)

PRODUCT_NAME := full_p500
PRODUCT_DEVICE := p500
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P500
PRODUCT_MANUFACTURER := LGE

