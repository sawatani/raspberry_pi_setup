#!/bin/bash

cd $(dirname $0)

source .env

TARGET_DIR=/Volumes/boot

touch ${TARGET_DIR}/ssh

cat <<EOF > ${TARGET_DIR}/wpa_supplicant.conf
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
country=JP
update_config=1

network={
  scan_ssid=1
  ssid="${WIFI_SSID}"
  psk="${WIFI_PSK}"
  proto=RSN
  key_mgmt=WPA-PSK
  pairwise=CCMP
  auth_alg=OPEN
}
EOF
