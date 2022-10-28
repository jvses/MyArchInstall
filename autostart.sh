#!/bin/bash

# Configurando o teclado
setxkbmap -model abnt2 -layout br -variant abnt2 &

# Compositor
picom -f &

# teclas de atalho do sxhkd
killall sxhkd
sxhkd &

#dwmblocks
killall dwmblocks
dwmblocks &

# Plano de fundo
img=$(cat ~/.cache/wal/wal)

#nitrogen --restore
#feh --bg-scale ~/img/Adventure/Wall1.jpg &
#feh --bg-scale ~/img/Bluey/Tree.jpg &
feh --bg-scale $img &

wal=$(wallset -L | tail -n 1 | awk '{print $1}')
#Wallpaper vivo
#wallset -q
#wallset --video /home/joao/img/gifs/mp4s/Wall5.mp4 &
#wallset -I $wal
#vid=~/vid/kimetsu/teste/comp.mp4

#killall xwinwrap
#sleep 2s
#xwinwrap -g 1366x768+0+0 -ov -ni -s -nf -- mpv --vo=gpu --no-audio --no-border --no-config --no-window-dragging --no-input-default-bindings --no-osd-bar --no-sub --loop --wid=%WID $vid &


~/scripts/wallpaper


#wallpaper-wrap


#xgifwallpaper -d 10 -s FILL ~/img/gifs/Wall2.gif

#applet do network manager
nm-applet &

#autenticador pelo rofi
#rofi-polkit-agent &
#exec --no-startup-id /usr/lib/polkit-1/polkit-agent-helper-1
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

#bottles &

#tim=$(date '+%_H')
#if [[ $tim -lt 8 ]] || [[ $tim -ge 18 ]]; then
#telegram
telegram-desktop &
#else
#st -e bashtop &

#fi

#brave
brave &


#Para corrigir problemas do scilab ou aplicações de java
wmname LG3D &
