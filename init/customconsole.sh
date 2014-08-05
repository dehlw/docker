#!/bin/bash
# console anpassen

bashconfig="/etc/bash.bashrc"

echo -e "\n# custom commands" >> $bashconfig
echo "alias la='la -a'" >> $bashconfig
echo "alias ll='ls -la'" >> $bashconfig
