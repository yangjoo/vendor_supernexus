# Define boot animation size
SUPERNEXUS_BOOTANIMATION_NAME := BOOTANIMATION-1920x1080

# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/jfltespr/full_jfltespr.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/common_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := jfltespr
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := jfltespr
PRODUCT_MODEL := SPH-L720
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltespr TARGET_DEVICE=jfltespr BUILD_FINGERPRINT="samsung/jfltespr/jfltespr:4.2.2/JDQ39/L720VPUAMDL:user/release-keys" PRIVATE_BUILD_DESC="jfltespr-user 4.2.2 JDQ39 L720VPUAMDL release-keys"