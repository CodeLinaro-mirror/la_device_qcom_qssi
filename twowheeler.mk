#Include all 2W changes here
TARGET_BUILD_2W := true

PRODUCT_SYSTEM_PROPERTIES += \
    ro.hw.vehicle.isbike=true

PRODUCT_COPY_FILES += \
    device/qcom/qssi/android.hardware.vehicle.bike.xml:system/etc/permissions/android.hardware.vehicle.bike.xml

# Reference qssi_32go
##############################Go configs###########################################
#Go variant flag
TARGET_HAS_LOW_RAM := true

# Enable DM file preopting to reduce first boot time
PRODUCT_DEX_PREOPT_GENERATE_DM_FILES := true
PRODUCT_DEX_PREOPT_DEFAULT_COMPILER_FILTER := verify

DONT_UNCOMPRESS_PRIV_APPS_DEXS := true

$(call inherit-product, build/target/product/go_defaults.mk)

# Disable surfaceflinger prime_shader cache to improve post boot memory.
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += service.sf.prime_shader_cache=0

#########################End of Go configs########################################

