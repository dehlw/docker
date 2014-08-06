#!/bin/bash
# customize console

bashconfig="/etc/bash.bashrc"

echo -e "\n# custom alias definition" >> $bashconfig
echo "alias la='ls -a'" >> $bashconfig
echo "alias ll='ls -la'" >> $bashconfig
echo -e "\n# color" >> $bashconfig
echo "PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00;31m\] \w \$\[\033[00m\] '" >> $bashconfig

