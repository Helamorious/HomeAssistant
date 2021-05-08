#!/bin/bash
set -ev
mkdir temp
git clone https://github.com/claytonjn/hass-circadian_lighting.git ./temp/
ls -la ./temp
cp -R ./temp/custom_components /config/
ls -la /config/custom_components
ls -la /config/custom_components/circadian_lighting