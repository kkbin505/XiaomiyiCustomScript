# WaffleFPV V8

#--Recording Adjustments--
# 4GB Clipping
writew 0xC03A8520 0x2004
# Sets Bitrate to 35Mbs.
writew 0xC05C2092 0x420C
# Superview Stretch
writeb 0xC06CC426 0x0C
writel 0xC05C2D7C 0x04380780

#--Sharpness Adjustments--
# Coring
t is2 -shp mode 0
t is2 -shp max_change 5 5
t is2 -shp cor d:\coring.txt
sleep 1
# Noise adjust 
t ia2 -adj tidx -1 1024 -1

#author: kkbin

#set fixed photo ISO 100 and 1145==1/60sec shutter speed
#shutter_speed values from 1-2047  1145==1/60sec, 1200==1/80sec, 1275==1/125sec
#author: kkbin

t ia2 -ae exp 0 1275 0

#multinic-bot ))) Autostart

sleep 9
t app key record
#--Misc. Adjustments--
# Short Beep once again begin auto record
t pwm 1 enable
sleep 1
t pwm 1 disable

