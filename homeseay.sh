#!/bin/bash
cmd=$1
machine="Homeseay" #name of your virtual machine
version="Homeseay version 1.0.0" #version of your virtual machine
ip="10.0.0.2" #ip of your virtual machine
sshUser="developer" #ssh user of your virtual machine
manual="man.txt" #manual file

case $cmd in 
    --version)
    echo "$(tput setaf 2)" $version
        ;;
    up)
    VBoxManage startvm $machine --type headless
        ;;
    pause)
    VBoxManage controlvm $machine pause
        ;;
    resume)
    VBoxManage controlvm $machine resume
        ;;
    save)
    VboxManage controlvm $machine savestate
        ;;
    reboot)
    VboxManage controlvm $machine reset
        ;;
    stop)
    VboxManage controlvm $machine poweroff
        ;;
    ip)
    vboxmanage guestproperty enumerate $machine |grep IP|cut -f2 -d,|cut -f2 -d:
        ;;    
    sHomeseay)
    ssh "$sshUser@$ip"
    ;;
    --help)
        if [ ! -e "$manual" ] ; then
            echo "$(tput setaf 1) File not found, check here : https://github.com/wodzy/homeseay"
        else 
            cat "$manual"
        fi
        ;;
    *)
    echo "$(tput setaf 1) Parameters required. Use $(tput setaf 7) See 'homeseay --help'."
        ;;
    esac