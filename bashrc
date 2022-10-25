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
alias ytmkvdl='yt-dlp -c --merge-output-format mkv -o "%(title)s.%(ext)s"'
alias yt-dlp='yt-dlp -c'
#alias mmpv='mpv'


#yt-dlp --cookies-from-browser brave -u rc3_xnJMc2SYQPDcmZKN0A -p joaovitor
alias pacman='pacman --color auto'
alias paru='paru --color auto'
alias toilet='toilet -t'
alias BP='qtwebflix -p https://plataforma.brasilparalelo.com.br/home'
alias Hulu='qtwebflix -p https://www.hulu.com/welcome'
alias Net='qtwebflix -p https://netflix.com'

# alias para o devour
alias dvince='devour evince'
#alias mpv='devour mpv'
#alias imv-folder='devour imv-folder'
#alias imv='devour imv'
#alias dzat='devour zathura'
#alias sxiv='devour sxiv'
alias facul='cd /home/joao/doc/Aulas/2022.2 && ranger'
alias dwmstart='vim ~/.local/share/dwm/autostart.sh'
alias chagelivebg='xwinwrap -g 1366x768+0+0 -ov -ni -s -nf -- mpv --vo=gpu --no-audio --no-border --no-config --no-window-dragging --no-input-default-bindings --no-osd-bar --no-sub --loop --wid=%WID'


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
export PATH=$PATH:/home/joao/.local/bin
#teste de export das chaves pro spotify_dl
export SPOTIPY_CLIENT_ID=f674974d95554ce79b194613d376dd04
export SPOTIPY_CLIENT_SECRET=3eaa9e07a6584408a2b37ceb2cceb954
export Netflix="https://netflix.com"
export Hulu="https://www.hulu.com/welcome"
export BP="https://plataforma.brasilparalelo.com.br/home"

