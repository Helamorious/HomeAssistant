# HomeAssistant

This is my planned HomeAssistant configuration. My current configurations that are running are a mess of spagetti configuration files. Migrating into Git will allow me to clean these up and manage my changes the the configs moving forward.

My HomeAssistant deployment is built up in Docker containers that are currently running on my Qnap NAS. This will eventually be moved to a dedicated server once old hardware has been freed up from my desktop. Docker-compose scripts will eventually be included in this repo.

## Network

The home network is the backbone to all of the connectivity required for Home Automation. My network is primary made up of Ubiquiti networking equipment to make it relatively cheap, powerful, but remains simple to manage. There is also a Palo Alto PA-200, which is performing all of my internet termination, routing and firewall duties.

## Deployment

* homeassistant/home-assistant - The HA instance
* eclipse-mosquitto - The MQTT service
* esphome/esphome - For managing firmware on ESP based things

## Integrations

* Discord Bot - This is used for some notifications
* Plex Media Server - This will be a trigger for some automations based around watching media
* UniFi Controller - Used primarily for presence detection, but can also use HA as a switch for turning on/off PoE ports on the switch

## Physical Things

* Philips Hue
  * Bridge v2
  * Ambiant White B22 (x3)
  * Dimmer Switch
* Ring Video Doorbell
* Sonoff Mini (w/ ESPHome firmware) (x3)

## Configuration Segmentation

The concept that I'm following here is segmenting the configurations based on the complexity of it. For basic one-liners, this remains in the configuration.yaml file. If there is more than one line, but it only contains one section, then it is stored in config/<integration>.yaml with an include. For the more complicated configurations that include configuration in multiple sections, such as defining integration parameters and then manually configuring things, these will be configured as packages.
