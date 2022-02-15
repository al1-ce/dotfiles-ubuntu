#!/bin/bash

# BASH COMMANDS
alias logoff='logout'
alias cls='cd ~ && clear && neofetch'
alias please='sudo $(history -p !!)'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
alias mkdir='mkdir -pv'
alias srcrc='source ~/.bashrc'

# CONFIRMATIONS
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias ln='ln -i'

# EXA/LS
alias ls='exa'
alias lf='ls -lF'
alias la='ls -a'
alias ll='ls -aghl'

# APPS
# cli
alias neofetch='neofetch --source ~/.al1-ce_config/.ascii_neofetch'
# sys
alias nemo='nohup nemo &'
alias kate='nohup kate &'
alias cool-retro-term='nohup cool-retro-term &'
alias gedit='nohup gedit &'
# personal fav
alias blanket='nohup blanket &'
# gnome
alias kvantummanager='nohup kvantummanager &'
alias store='sudo synaptic'
alias gnome-tweaks='nohup gnome-tweaks &'
#alias gnome-control-center='nohup gnome-control-center &'
# ui creators
alias glade='nohup glade &'
alias qtcreator='nohup qtcreator &'

# ALIASES
alias alias-update='source ~/.al1-ce_config/.bash_aliases'
alias alias-edit='vim ~/.al1-ce_config/.bash_aliases'

# PROGS
alias wttr='curl wttr.in/Moscow'
alias mapscii='telnet mapscii.me'
alias remind='cat ~/.al1-ce_config/.command-reminder'
alias clock='tty-clock -s -c -C 7'
alias cmatrix='cmatrix -C blue'
alias enter-the-shell='mpv --quiet -vo=caca .al1-ce_config/gits-op.mp4'

# SERVERS
alias server-start='python3 -m http.server 8080 --bind 127.0.0.1'
# alias atheos-test='cd /mnt/e/git/atheos/ && python3 -m http.server 8080 --bind 127.0.0.1'

# WIN NAVIGATION
# alias win='cd /mnt/c/Users/alice'
# alias win-git='cd /mnt/e/git'

# DIRTY FIXES
alias dbus='sudo /etc/init.d/dbus start'
alias gnome-center-fix='gsettings reset org.gnome.ControlCenter last-panel'

run-quiet () {
        [[ $# -eq 0 ]] && echo "usage: run_quiet [program] [program_arg] [output_file]" && return 0

        nohup $1 -u $2 > $3 &
}

psearch () {
        [[ $# -eq 0 ]] && echo "Please supply process name" && return 0
        ps axu | grep -- "$1"
}

snap-init () {
	sudo daemonize /usr/bin/unshare --fork --pid --mount-proc /lib/systemd/systemd --system-unit=basic.target
}

snap-enter () {
	exec sudo nsenter -t $(pidof systemd) -a su - $LOGNAME
}

rotate-screen () {
    [[ $# -eq 0 ]] && printf "usage: rotate-screen [screen] [orientation]\nscreen: left, center, right\norientation: normal, left, right, inverted\n" && return 0
    [[ "$1" == "left" ]] && xrandr --output DP-1 --rotate $2 && return 0
    [[ "$1" == "center" ]] && xrandr --output DP-2 --rotate $2 && return 0
    [[ "$1" == "right" ]] && xrandr --output HDMI-0 --rotate $2 && return 0
    echo "Screen is incorrect"
}

# edex () {
# 	cd ~/apps
# 	./eDEX-UI-Linux-x86_64.AppImage &
# }

#               jp2a --colors --color-depth=8 --chars=" .,:;!-~=+÷*JS?#%@AX" --width="${PV_WIDTH}" "${FILE_PATH}" && exit 4
#               jp2a --colors --color-depth=8 --chars=" ░▒▓█" --width="${PV_WIDTH}" "${FILE_PATH}" && exit 4

get-defaults () {
    sudo apt install tty-clock neofetch ranger exa \
        net-tools python3 nodejs golang git
}

godot () {
    cd ~/Godot
    nohup ./Godot_v3.4.2-stable_mono_x11.64 & 
    cd ~
}

# EXPORTS
export EDITOR=vim
export HOMEBREW_NO_ENV_HINTS=TRUE

# STARTUP SCRIPT

cd ~
clear
neofetch
