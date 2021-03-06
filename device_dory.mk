$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/dory/dory-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/dory/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.dory:recovery/root/fstab.dory

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_dory
PRODUCT_DEVICE := dory
