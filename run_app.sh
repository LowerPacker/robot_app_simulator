#!/bin/bash 

CUR_DIR=$(pwd)

APP_SETUP_DIR=${CUR_DIR}/install
INTERFACE_SETUP_DIR=${CUR_DIR}/common_interface/install

source ${APP_SETUP_DIR}/local_setup.bash
source ${INTERFACE_SETUP_DIR}/local_setup.bash
./build/app_simulator/app_simulator
