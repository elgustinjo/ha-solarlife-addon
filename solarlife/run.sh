#!/usr/bin/with-contenv bash

MAC=$(jq -r ".device_mac" /data/options.json)
MQTT=$(jq -r ".mqtt_host" /data/options.json)
PORT=$(jq -r ".mqtt_port" /data/options.json)
INTERVAL=$(jq -r ".interval" /data/options.json)

echo "Starting SolarLife BLE MPPT..."

exec solarlife \
  -i hci0 \
  -d "$MAC" \
  -a "$MQTT" \
  -p "$PORT" \
  -t "$INTERVAL" \
  -v
