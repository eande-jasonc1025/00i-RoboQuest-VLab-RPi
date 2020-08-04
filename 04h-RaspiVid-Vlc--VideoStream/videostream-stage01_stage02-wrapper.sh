#!/bin/bash
# sleep long enough for '..stage01..' to complete or '..stage02..' will fail

##jwc y /home/pi/01-Jwc/02i-Rpi-Setup/videostream-stage01.sh &
##jwc y /home/pi/01-RoboQuest/roboquest-vlab--rpi/04h-RaspiVid-Vlc--VideoStream/videostream-stage01.sh &
/home/pi/Link_RpiSetup/04h-RaspiVid-Vlc--VideoStream/videostream-stage01.sh &

sleep 15

##jwc y /home/pi/01-Jwc/02i-Rpi-Setup/videostream-stage02.sh
##jwc y /home/pi/01-RoboQuest/roboquest-vlab--rpi/04h-RaspiVid-Vlc--VideoStream/videostream-stage02.sh
/home/pi/Link_RpiSetup/04h-RaspiVid-Vlc--VideoStream/videostream-stage02.sh
