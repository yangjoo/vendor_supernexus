# Common SuperNexus overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/supernexus/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/supernexus/overlay/dictionaries

# Common product property overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=yyyy-MM-dd \
    ro.com.android.dataroaming=false

# Include SuperNexus boot animation
ifneq ($(SUPERNEXUS_BOOTANIMATION_NAME),)
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/bootanimation/$(SUPERNEXUS_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
else
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/bootanimation/BOOTANIMATION-800x480.zip:system/media/bootanimation.zip
endif

# Enable ADB authentication
ifneq ($(TARGET_BUILD_VARIANT),eng)
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# init.d support
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/supernexus/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# SuperNexus-specific init file
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/etc/init.local.rc:root/init.sn.rc

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# SuperSU (Root) support
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/supernexus/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \
    vendor/supernexus/prebuilt/common/etc/.installed_su_daemon:system/etc/.installed_su_daemon \
    vendor/supernexus/prebuilt/common/xbin/daemonsu:system/xbin/daemonsu \
    vendor/supernexus/prebuilt/common/xbin/su:system/xbin/su

# Add korean keypad
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/app/AxT9IME.apk:system/app/AxT9IME.apk \
    vendor/supernexus/prebuilt/common/lib/libDHWR.so:system/lib/libDHWR.so \
    vendor/supernexus/prebuilt/common/lib/libDWP.so:system/lib/libDWP.so \
    vendor/supernexus/prebuilt/common/lib/libXt9core.so:system/lib/libXt9core.so

# Add Custom fonts
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/fonts/DroidSans.ttf:system/fonts/DroidSans.ttf \
    vendor/supernexus/prebuilt/common/fonts/DroidSans-Bold.ttf:system/fonts/DroidSans-Bold.ttf \
    vendor/supernexus/prebuilt/common/fonts/DroidSansKorean.ttf:system/fonts/DroidSansKorean.ttf \
    vendor/supernexus/prebuilt/common/fonts/DroidSansKorean-Bold.ttf:system/fonts/DroidSansKorean-Bold.ttf

# Required SuperNexus Packages
PRODUCT_PACKAGES += \
    SoundRecorder \
    Basic \
    Launcher3 \
    libemoji

# OpenSSH
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    bash \
    nano \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Live wallpapers
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable

# VideoEditor
PRODUCT_PACKAGES += \
    VideoEditor \
    libvideoeditor_jni \
    libvideoeditor_core \
    libvideoeditor_osal \
    libvideoeditor_videofilters \
    libvideoeditorplayer

# Busybox
PRODUCT_PACKAGES += \
    Busybox

# Inherit common SuperNexus SELinux Policies
-include vendor/supernexus/sepolicy/sepolicy.mk

# Inherit common product build prop overrides
-include vendor/supernexus/configs/common_versions.mk
