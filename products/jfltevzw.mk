# Define boot animation size
SUPERNEXUS_BOOTANIMATION_NAME := BOOTANIMATION-1920x1080

# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/jfltevzw/full_jfltevzw.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/common_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := jfltevzw
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := jfltevzw
PRODUCT_MODEL := SCH-I545
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltevzw TARGET_DEVICE=jfltevzw BUILD_FINGERPRINT="Verizon/jfltevzw/jfltevzw:4.3/JSS15J/I545VRUEMK2:user/release-keys" PRIVATE_BUILD_DESC="jfltevzw-user 4.3 JSS15J I545VRUEMK2 release-keys"