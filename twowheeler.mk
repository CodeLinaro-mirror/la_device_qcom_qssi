#Include all 2W changes here
TARGET_BUILD_2W := true

PRODUCT_SYSTEM_PROPERTIES += \
    ro.hw.vehicle.isbike=true

PRODUCT_COPY_FILES += \
    device/qcom/qssi/android.hardware.vehicle.bike.xml:system/etc/permissions/android.hardware.vehicle.bike.xml

#Enable TwoWheeler apps
PRODUCT_PACKAGES += TwoWheelerLauncher \
    TwoWheelerSystemUI

