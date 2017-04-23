#!/bin/bash

# John Filipowicz
# Radford University

# Purpose: Test DHT sensor by outputing it's current reading


# GPIO pin
PIN=17

echo Reading from DHT sensor. May take up to 5 seconds...
echo

python ~/Documents/feederSoftware/sensor_libraries/DHT_Python_Library/Adafruit_Python_DHT/examples/AdafruitDHT.py 11 "$PIN"

echo
echo Temp is read in as Celcius
