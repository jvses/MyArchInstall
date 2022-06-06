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
alias facul='cd /home/joao/doc/Aulas/2021.2 && ranger'

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

pokemon-colorscripts -r


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

PATH="/home/joao/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/joao/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/joao/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/joao/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/joao/perl5"; export PERL_MM_OPT;
