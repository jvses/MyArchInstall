#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias cfgi3='vim ~/.config/i3/config'
alias la='ls -a'
alias ll='la -l'
alias yt-mpv360='mpv --ytdl-format=134+bestaudio'
alias yt-mpv480='mpv --ytdl-format=135+bestaudio'

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

pokemon-colorscripts -r
