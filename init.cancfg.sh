#!/system/bin/sh

# Copyright (c) 2022 Qualcomm Innovation Center, Inc. All rights reserved.
# SPDX-License-Identifier: BSD-3-Clause-Clear

CAN_INTERFACE=$(getprop ro.boot.can_interface)

if [ "$CAN_INTERFACE" = "uart_and_spi" ]; then
    log -t BOOT -p i "Start can2 from boot"
    ip link set can2 up type can bitrate 500000
    ip link set up can2
else
    log -t BOOT -p i "Start can0 from boot"
    ip link set can0 up type can bitrate 500000
fi

