#!/bin/bash
# common network settings 

#proxy settings

# http_proxy="http://127.0.0.1:3128/"
# https_proxy="https://127.0.0.1:3128/"

export http_proxy="http://192.168.1.254:8080/"
export https_proxy="https://192.168.1.254:8080/"

export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$https_proxy

# apt Proxy config
aptproxyfile="/etc/apt/apt.conf.d/10proxy"
touch $aptproxyfile
echo "# Set Sybit proxy" > $aptproxyfile
echo "Acquire::http::proxy \"$http_proxy\";" >> $aptproxyfile
echo "Acqire::https::proxy \"$https_proxy\";" >> $aptproxyfile
# ---

# environment Proxy config
envifile="/etc/environment"
echo -e "\n" >> $envifile
echo "http_proxy=$http_proxy" >> $envifile
echo "https_proxy=$https_proxy" >> $envifile
