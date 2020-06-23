#!/bin/bash
# sleep long enough for '..stage01..' to complete or '..stage02..' will fail
# sleep 5sec (vs 15sec) seems long enough for stage01 to complete, while not causing the user to wait too long
echo "*** \'sleep 5\' for \'videsostream-stage01\' to stabilize"
sleep 5
/home/pi/01-Jwc/02i-Rpi-Setup/videostream-stage02.sh
