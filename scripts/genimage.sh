#!/usr/bin/env bash
#
# Copyright (c) 2021 OpenHisiIpCam, info@openhisiipcam.org
# SPDX-License-Identifier: MIT
#
# TODO brief description
#

#env

${PWD}/support/scripts/genimage.sh -c ${BR2_EXTERNAL_CDF_MT76X8_PATH}/board/common/genimage/16MB.cfg
${PWD}/support/scripts/genimage.sh -c ${BR2_EXTERNAL_CDF_MT76X8_PATH}/board/common/genimage/32MB.cfg
