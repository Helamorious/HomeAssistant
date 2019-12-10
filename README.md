# HomeAssistant

This is my planned HomeAssistant configuration. My current configurations that are running are a mess of spagetti configuration files. Migrating into Git will allow me to clean these up and manage my changes the the configs moving forward.

My HomeAssistant deployment is built up in Docker containers that are currently running on my Qnap NAS. This will eventually be moved to a dedicated server once old hardware has been freed up from my desktop. Docker-compose scripts can be found in this repo.

## Deployment

* homeassistant/home-assistant - The HA instance
* eclipse-mosquitto - The MQTT service
* esphome/esphome - For managing firmware on ESP based things

## Things

* Discord Bot - This is used for some notifications
* Philips Hue Lights
* Ring Video Doorbell
* Sonoff Mini - Flashed with ESPHome firmware
* UniFi Controller - Used primarily for presence detection, but can also use HA as a switch for turning on/off PoE ports on the switch