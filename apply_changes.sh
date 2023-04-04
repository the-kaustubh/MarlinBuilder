#!/usr/bin/env bash

# Set appropriate env
sed -i "s/mega2560/${HARDWARE_ENV}/" platformio.ini

rm Marlin/Configuration*

# Get Configurations and screens
BASE_URL="https://raw.githubusercontent.com/MarlinFirmware/Configurations/release-2.1.2/config/examples/"
# TODO: later move to env
FQ_BOARD_PATH="Creality/Ender-3%20Pro/CrealityV422"

wget "${BASE_URL}${FQ_BOARD_PATH}/_Bootscreen.h" -p Marlin/
wget "${BASE_URL}${FQ_BOARD_PATH}/_Statusscreen.h" -p Marlin/
wget "${BASE_URL}${FQ_BOARD_PATH}/Configuration.h" -p Marlin/
wget "${BASE_URL}${FQ_BOARD_PATH}/Configuration_adv.h" -p Marlin/
