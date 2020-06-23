# jwc fps 30 -> 20 still good
#     17Mpbs is default, try min of 10Mps: little but not much difference
#     640x360 -> 320x180: more noticable difference, drop from 60% to 40% roughly :)+

# y raspivid -o - -t 0 -hf -vf -a 12 -w 640 -h 360 -fps 30 -v | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554}' :demux=h264
# y raspivid -o - -t 0 -hf -vf -a 12 -w 640 -h 360 -fps 20 -v | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554}' :demux=h264
# y raspivid -o - -t 0 -hf -vf -a 12 -w 640 -h 360 -fps 20 -b 10000000 -v | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554}' :demux=h264
# y raspivid -o - -t 0 -hf -vf -a 12 -w 320 -h 180 -fps 20 -b 10000000 -v | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554}' :demux=h264

# Add '$HOSTNAME' to idenitfy which server-bot's videocam is being used
# 'echo $HOSTNAME' reveals content
raspivid -o - -t 0 -hf -vf -a 12 -a $HOSTNAME -w 320 -h 180 -fps 20 -b 10000000 -v | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554}' :demux=h264
