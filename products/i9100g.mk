# Define boot animation size
SUPERNEXUS_BOOTANIMATION_NAME := BOOTANIMATION-800x480

# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/i9100g/full_i9100g.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/common_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := i9100g
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i9100g
PRODUCT_MODEL := GT-I9100G
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100G TARGET_DEVICE=GT-I9100G BUILD_FINGERPRINT=samsung/GT-I9100G/GT-I9100G:4.1.2/JZO54K/I9100GXXLSR:user/release-keys PRIVATE_BUILD_DESC="GT-I9100G-user 4.1.2 JZO54K I9100GXXLSR release-keys"