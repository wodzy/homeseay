# Homeseay
This CLI script help you managing easily your Virtual Box's VM.


# Requirements 

* Virtual Box [Download Virtual Box](https://www.virtualbox.org/wiki/Downloads)
* VM installed with an IP address fixed and SSH activated _(Debian, Ubuntu, Linux Mint...)_

# Configurations

Just edit this variables :

* machine="name of your VM" **Required**
* version="version of your VM" _Optional_
* ip="ip of your VM" **Required**
* sshUser="ssh user of your VM" **Required**

# How to use ?

usage: ./homeseay.sh [--version] [--help]

* up        : Start VM
* pause     : Pause VM
* resume    : Resume VM
* save      : Save of the VM and then stop it
* reboot    : Reset VM
* stop      : Power off VM
* ip	  : Get ip of your VM
* ssh : ssh connection with VM
