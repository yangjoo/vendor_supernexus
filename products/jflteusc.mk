# Define boot animation size
SUPERNEXUS_BOOTANIMATION_NAME := BOOTANIMATION-1920x1080

# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/jflteusc/full_jflteusc.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/common_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := jflteusc
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := jflteusc
PRODUCT_MODEL := SCH-R970
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteusc TARGET_DEVICE=jflteusc BUILD_FINGERPRINT="samsung/jflteusc/jflteusc:4.2.2/JDQ39/R970VXUAMD9:user/release-keys" PRIVATE_BUILD_DESC="jflteusc-user 4.2.2 JDQ39 R970VXUAMD9 release-keys"