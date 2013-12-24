# Define boot animation size
SUPERNEXUS_BOOTANIMATION_NAME := BOOTANIMATION-800x480

# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/i777/full_i777.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/common_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := i777
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i777
PRODUCT_MODEL := SGH-I777
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I777 TARGET_DEVICE=SGH-I777 BUILD_FINGERPRINT=samsung/SGH-I777/SGH-I777:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="SGH-I777-user 4.0.3 IML74K XXLPQ release-keys"
