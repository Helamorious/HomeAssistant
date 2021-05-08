#!/bin/bash
set -ev
mkdir temp
git clone https://github.com/claytonjn/hass-circadian_lighting.git ./temp/
ls -la ./temp
ls -la ./temp/custom_components
cp -r ./temp/custom_components/* /config/custom_components/
ls -la /config/custom_components/
ls -la /config/custom_components/circadian_lighting/