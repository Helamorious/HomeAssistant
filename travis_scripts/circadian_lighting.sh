#!/bin/bash
set -ev
mkdir temp
git clone https://github.com/claytonjn/hass-circadian_lighting.git ./temp/
cp -R ./temp/custom_components/* /config/custom_components/circadian_lighting
ls -la /config/custom_components
ls -la /config/custom_components/circadian_lighting