#!/bin/sh

xrdb ~/.Xresources

# Mouse
xset m 1/1 0
xinput set-prop "Primax Kensington Eagle Trackball" "libinput Accel Profile Enabled" 0, 1
xinput set-prop "Primax Kensington Eagle Trackball" "libinput Accel Speed" -0.50
xinput set-prop "Kensington Slimblade Trackball" "libinput Accel Profile Enabled" 0, 1
xinput set-prop "Kensington Slimblade Trackball" "libinput Accel Speed" -0.20
xinput set-button-map "Kensington Slimblade Trackball" 1 8 3 4 5 6 7 2


# Enable zapping (C-A-<Bksp> kills X)
setxkbmap -option terminate:ctrl_alt_bksp
#setxkbmap -layout "us,us" -variant ",intl"
setxkbmap -option "grp:alt_shift_toggle"

# Set background color
xsetroot -solid "#1d2021"

# Enable core dumps in case something goes wrong
#ulimit -c unlimited

exec /usr/bin/awesome

# Start i3 and log to ~/.i3/logfile
echo "Starting at $(date)" > ~/.i3/logfile
exec /usr/bin/i3 -V  >> ~/.i3/logfile

#dwmstatus 2>&1 >/dev/null &
#exec /usr/local/bin/dwm > ~/dwm_logfile

