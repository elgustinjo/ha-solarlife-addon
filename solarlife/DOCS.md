# SolarLife BLE MPPT

This addon reads data from a SolarLife-compatible BLE MPPT controller and forwards it to MQTT.

## Configuration

```yaml
device_mac: "AA:BB:CC:DD:EE:FF"
mqtt_host: "core-mosquitto"
mqtt_port: 1883
interval: 30
