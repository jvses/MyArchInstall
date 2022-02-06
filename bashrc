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
#alias mmpv='mpv'


# alias para o devour
alias dvince='devour evince'
alias mpv='devour mpv'
alias imv-folder='devour imv-folder'
alias imv='devour imv'
alias dzat='devour zathura'
alias sxiv='devour sxiv'

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

pokemon-colorscripts -r


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
