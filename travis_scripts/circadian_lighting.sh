#!/bin/bash
set -ev
mkdir temp
git clone https://github.com/claytonjn/hass-circadian_lighting.git ./temp/
ls -la ./temp
ls -la ./temp/circadian_lighting/
cp -R ./temp/circadian_lighting/custom_compents /config/
ls -la /config/custom_components
ls -la /config/custom_components/circadian_lighting