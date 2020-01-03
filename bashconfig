#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Alias

alias mp='ncmpcpp'
alias wifi='sudo wifi-menu'
alias pac='sudo pacman -S'
alias upg='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias ebrc='vim ~/.bashrc'
alias eb='exec bash'
alias mp='ncmpcpp'
alias sysu='systemctl --user'

#Functions

wp () {
        wal -i $1
        bash ~/.config/dunst/wal.sh
}

npf () {
        touch $1
        echo -e "#!/usr/bin/env python3\n\n" >> $1
        vim $1
}

nd () {
        mkdir $1
        cd $1
}

nt () {
        touch $1
        vim $1
}

nbs () {
        touch $1
        echo -e "#!/bin/bash\n\n" >> $1
        vim $1
}
