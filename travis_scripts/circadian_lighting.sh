#!/bin/bash
set -ev
mkdir temp
git clone https://github.com/claytonjn/hass-circadian_lighting.git ./temp/
cp -r ./temp/custom_components/* /config/custom_components/