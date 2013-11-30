# Define boot animation size
SUPERNEXUS_BOOTANIMATION_NAME := BOOTANIMATION-800x480

# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/i9100/full_i9100.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/common_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := i9100
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i9100
PRODUCT_MODEL := GT-I9100
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 TARGET_DEVICE=GT-I9100 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K XXLPQ release-keys"