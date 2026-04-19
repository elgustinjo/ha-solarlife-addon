# SolarLife BLE MPPT

This addon reads data from a SolarLife-compatible BLE MPPT controller and forwards it to MQTT.

## Configuration

```yaml
device_mac: "00:15:83:57:04:79"
mqtt_host: "core-mosquitto"
mqtt_port: 1883
interval: 30
