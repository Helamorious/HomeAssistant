#!/bin/bash
set -ev
mkdir temp
git clone https://github.com/claytonjn/hass-circadian_lighting.git ./temp/
ls -la ./temp/
cp -r ./temp/hass-circadian_lighting/custom_components/* /config/custom_components/