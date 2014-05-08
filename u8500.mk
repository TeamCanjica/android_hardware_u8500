# Audio
PRODUCT_PACKAGES += \
   libasound
$(call inherit-product, hardware/u8500/audio/libasound/alsa-lib-products.mk)

# STE Display 
PRODUCT_PACKAGES += \
   lights.montblanc \
   gralloc.montblanc \
   hwcomposer.montblanc \
   copybit.montblanc \
   libblt_hw

# STE Media
PRODUCT_PACKAGES += \
   libomxil-bellagio \
   libstelpcutils

# WLAN
PRODUCT_PACKAGES += \
   iw

# External
PRODUCT_PACKAGES += \
   memtrack.montblanc
BOARD_HAL_STATIC_LIBRARIES := libhealthd.montblanc
