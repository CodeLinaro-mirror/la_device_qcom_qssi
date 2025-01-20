#Include all 2W changes here
TARGET_BUILD_2W := true

PRODUCT_SYSTEM_PROPERTIES += \
    ro.hw.vehicle.isbike=true

#system prop for Hardware type Automotive
PRODUCT_SYSTEM_PROPERTIES += \
    ro.hardware.type=automotive \
    sys.no_kill_cached_proc_post_boot_completed_duration_millis=0 \
    persist.sys.device.mode = peripheral

PRODUCT_COPY_FILES += \
    device/qcom/qssi/android.hardware.vehicle.bike.xml:system/etc/permissions/android.hardware.vehicle.bike.xml

# broadcast radio feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.broadcastradio.xml:system/etc/permissions/android.hardware.broadcastradio.xml

#Enable TwoWheeler apps
PRODUCT_PACKAGES += \
    TwoWheelerLauncher \
    TwoWheelerSystemUI \
    ECall \
    SecondaryBluetooth \
    MqttListener

