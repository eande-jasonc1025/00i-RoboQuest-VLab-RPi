# * Aliases: Do NOT have any spaces or will cause error
# * Can Activate by '~/source .bashrc'
# 'alias' lists aliases

# Aliases: Directory/File Management
alias ll='ls -l'
alias lla='ls -Al'
alias llt='ls -lt'
alias llat='ls -Alt'
alias lcf='ls -CF'

alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias mkdir='mkdir -v'
alias diff='diff -sy'

# Aliases: Admin Management 
alias Alias_Source_Bashrc='source ./.bashrc'
#jwc n not the same as typing this directly, loses shutdown log :(+: alias Alias_Shutdown='sudo shutdown now'


# Aliases: 'VideoStream-Setup' 
alias Alias_VideoStream_Setup_01='lsusb'
alias Alias_VideoStream_Setup_02='tail /sys/class/video4linux/*/name'
alias Alias_VideoStream_Setup_03='v4l2-ctl --list-devices'
alias Alias_VideoStream_Setup_04_00='ffplay /dev/video0'
alias Alias_VideoStream_Setup_04_01='ffplay /dev/video1'
alias Alias_VideoStream_Setup_04_02='ffplay /dev/video2'
alias Alias_VideoStream_Setup_04_03='ffplay /dev/video3'
alias Alias_VideoStream_Setup_04_04='ffplay /dev/video4'
alias Alias_VideoStream_Setup_04_05='ffplay /dev/video5'
alias Alias_VideoStream_Setup_04_06='ffplay /dev/video6'
alias Alias_VideoStream_Setup_04_07='ffplay /dev/video7'
alias Alias_VideoStream_Setup_04_08='ffplay /dev/video8'
alias Alias_VideoStream_Setup_04_09='ffplay /dev/video9'

# Aliases: 'VideoStream-Startup'
#
#   Requires 'sudo service motion restart'
#   Good for Usb Webcam
alias Alias_VideoStream_Status='sudo service motion status'
alias Alias_VideoStream_Restart='sudo service motion restart'
alias Alias_VideoStream_Stop='sudo service motion stop'
#   'chromium-browser localhost:8080' not work
alias Alias_VideoStream_App='chromium-browser 127.0.0.1:8080'
#   Obsolete since mainly for Raspi Camera
#jwc y alias Alias_VideoStream_02='/home/pi/01-Jwc/02i-Rpi-Setup/videostream-stage01_stage02-wrapper.sh'
#jwc y alias Alias_VideoStream_02='/home/pi/01-RoboQuest/roboquest-vlab--rpi/04h-RaspiVid-Vlc--VideoStream/videostream-stage01_stage02-wrapper.sh'
alias Alias_VideoStream_02='/home/pi/Link_RpiSetup/04h-RaspiVid-Vlc--VideoStream/videostream-stage01_stage02-wrapper.sh'
#
# Aliases: RaspiVid -> Console:'VLC'
alias Alias_VideoStream_03="raspivid -o - -t 0 -vf -hf -w 800 -h 400 -fps 24 |cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8160}' :demux=h264"


# Aliases: 'BatteryMonitor'
#jwc y alias Alias_BatteryMonitor='python /home/pi/Link_RpiSetup/04j-PiUptimeUps-AlchemyPowerDOTCom/uptime-2.0-Python3.py'
#jwc y alias Alias_BatteryMonitor='python /home/pi/01-RoboQuest/roboquest-vlab--rpi/04j-PiUptimeUps-AlchemyPowerDOTCom/uptime-2.0-Python3.py'
alias Alias_BatteryMonitor='python /home/pi/Link_RpiSetup/04j-PiUptimeUps-AlchemyPowerDOTCom/uptime-2.0-Python3.py'

# Aliases: 'Screen_SerialMonitor'
alias Alias_Screen_SerialMonitor='sudo screen /dev/ttyACM0 115200'