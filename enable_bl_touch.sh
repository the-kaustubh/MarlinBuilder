#!/usr/bin/env bash

# sed -i 's|||' Configuration.h          
# Mandatory
sed -i 's|//#define BLTOUCH|#define BLTOUCH|' Configuration.h          
sed -i 's|//#define AUTO_BED_LEVELING_BILINEAR|#define AUTO_BED_LEVELING_BILINEAR|' Configuration.h          
sed -i 's|//#define Z_SAFE_HOMING|#define Z_SAFE_HOMING|' Configuration.h          
sed -i 's|//#define CUSTOM_MACHINE_NAME "3D Printer"|#define CUSTOM_MACHINE_NAME "K-CE3P"|' Configuration.h          

# use z end stop for bl touch 
sed -i 's|//#define Z_MIN_PROBE_USES_Z_MIN_ENDSTOP_PIN|#define Z_MIN_PROBE_USES_Z_MIN_ENDSTOP_PIN|' Configuration.h          

# # diabled: use the 5pin connector pin for bl touch
# sed -i 's|//#define USE_PROBE_FOR_Z_HOMING|#define USE_PROBE_FOR_Z_HOMING|' Configuration.h          
# # For creality 4.2.2 board PB1 is the pin for bl touch
# sed -i 's|//#define Z_MIN_PROBE_PIN 32|#define Z_MIN_PROBE_PIN PB1|' Configuration.h          

# Set Nozzle to probe offset
# According to https://support.th3dstudio.com/helpcenter/creality-bl-touch-probe-mount-offsets-metal-bracket/
sed -i 's|#define NOZZLE_TO_PROBE_OFFSET { 10, 10, 0 }|#define NOZZLE_TO_PROBE_OFFSET { -44, -9, 0 }|' Configuration.h

# Build Plate size fix
sed -i 's|#define X_BED_SIZE 200|#define X_BED_SIZE 235|' Configuration.h          
sed -i 's|#define Y_BED_SIZE 200|#define Y_BED_SIZE 235|' Configuration.h          

# Optional
sed -i 's|//#define LCD_BED_LEVELING|#define LCD_BED_LEVELING|' Configuration.h          

cat Configuration.h

# Optional Configuration_adv.h
sed -i 's|//#define PROBE_OFFSET_WIZARD|#define PROBE_OFFSET_WIZARD|' Configuration_adv.h