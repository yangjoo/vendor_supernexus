# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/jfltexx/full_jfltexx.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/common_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := jfltexx
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := jfltexx
PRODUCT_MODEL := GT-I9505
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltexx TARGET_DEVICE=jfltexx BUILD_FINGERPRINT="samsung/jfltexx/jflte:4.2.2/JDQ39/I9505XXUAMDE:user/release-keys" PRIVATE_BUILD_DESC="jfltexx-user 4.2.2 JDQ39 I9505XXUAMDE release-keys"

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/bootanimation/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip