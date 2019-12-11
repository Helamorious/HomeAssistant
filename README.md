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
* Plex Media Server - This will be a trigger for some automations based around watching media
* Ring Video Doorbell
* Sonoff Mini - Flashed with ESPHome firmware to use the HASS API
* UniFi Controller - Used primarily for presence detection, but can also use HA as a switch for turning on/off PoE ports on the switch

## Configuration Segmentation
The concept that I'm following here is segmenting the configurations based on the complexity of it. For basic one-liners, this remains in the configuration.yaml file. If there is more than one line, but it only contains one section, then it is stored in config/<integration>.yaml with an include. For the more complicated configurations that include configuration in multiple sections, such as defining integration parameters and then manually configuring things, these will be configured as packages.