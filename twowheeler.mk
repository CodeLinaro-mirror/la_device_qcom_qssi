#Include all 2W changes here
TARGET_BUILD_2W := true
# set this to true if building car svcs instead of bike svcs
USE_CAR_SVCS_FOR_2W := true

# this prop is used in SystemServer and RCS etc to turn off
# features from cpp/java code
PRODUCT_SYSTEM_PROPERTIES += \
    ro.hw.vehicle.isbike=true

#system prop for Hardware type Automotive
PRODUCT_SYSTEM_PROPERTIES += \
    ro.hardware.type=automotive

# this feature is used in System Server to decide if platform is using
# Car services or Bike services
ifneq ($(USE_CAR_SVCS_FOR_2W),true)
PRODUCT_COPY_FILES += \
    device/qcom/qssi/android.hardware.vehicle.bike.xml:system/etc/permissions/android.hardware.vehicle.bike.xml
endif
