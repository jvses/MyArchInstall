#!/bin/bash

# Configurando o teclado
setxkbmap -model abnt2 -layout br -variant abnt2 &

# Compositor
picom -f &

# teclas de atalho do sxhkd
sxhkd &

#dwmblocks
dwmblocks &

# Plano de fundo
img=$(cat ~/.cache/wal/wal)

#nitrogen --restore
#feh --bg-scale ~/img/Adventure/Wall1.jpg &
#feh --bg-scale ~/img/Bluey/Tree.jpg &
feh --bg-scale $img &

#applet do network manager
nm-applet &


#telegram
telegram-desktop &

#brave
brave &

