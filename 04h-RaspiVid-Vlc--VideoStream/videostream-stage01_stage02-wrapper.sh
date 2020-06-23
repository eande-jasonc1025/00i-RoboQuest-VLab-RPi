#!/bin/bash
# sleep long enough for '..stage01..' to complete or '..stage02..' will fail
/home/pi/01-Jwc/02i-Rpi-Setup/videostream-stage01.sh &
sleep 15
/home/pi/01-Jwc/02i-Rpi-Setup/videostream-stage02.sh
