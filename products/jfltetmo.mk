# Define boot animation size
SUPERNEXUS_BOOTANIMATION_NAME := BOOTANIMATION-1920x1080

# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/jfltetmo/full_jfltetmo.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/common_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := jfltetmo
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := jfltetmo
PRODUCT_MODEL := SGH-M919
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltetmo TARGET_DEVICE=jfltetmo BUILD_FINGERPRINT="samsung/jfltetmo/jfltetmo:4.2.2/JDQ39/M919UVUAMDB:user/release-keys" PRIVATE_BUILD_DESC="jfltetmo-user 4.2.2 JDQ39 M919UVUAMDB release-keys"