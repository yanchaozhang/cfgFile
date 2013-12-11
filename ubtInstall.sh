#!/bin/bash

export http_proxy='http://proxy.vmware.com:3128'
export https_proxy='http://proxy.vmware.com:3128'

firstUpdate() {
    if [ ! -d /etc/apt/apt.conf ]; then
        sudo touch /etc/apt/apt.conf
    fi
    sudo cat /etc/apt/apt.conf | grep "proxy.vmware.com" > /dev/null 2>&1
    if [ $? != 0 ];then
        sudo chmod 777 /etc/apt/apt.conf
        sudo echo 'Acquire::http::Proxy "http://proxy.vmware.com:3128";' >> /etc/apt/apt.conf
        sudo chmod 644 /etc/apt/apt.conf
    fi

    sudo apt-get update -y && sudo apt-get upgrade -y
}

installEmacs () {
    sudo apt-add-repository ppa:cassou/emacs
    sudo apt-get update -y
    sudo apt-get install emacs24 emacs24-el emacs24-common-non-dfsg
}

installJava () {
    sudo apt-add-repository ppa:webupd8team/java
    sudo apt-get update
    sudo apt-get install -y oracle-java7-installer 
}