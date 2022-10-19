#!/bin/bash
PCNAME=$(hostname) #Displays the name of the host.
PCVERSION=$(hostnamectl | awk 'NR==7{print $3,$4,$5}') #Just print the host info text.
OSNAME=$(hostnamectl | awk 'NR==8{print $3}') #Print Operating system name.
IPADD=$(hostname --all-ip-addresses) #Print all the ip addresses of host.
STORAGE=$(df -h | grep "/dev/sda3" | awk '{print $4}')  #Display memory for the host in human readabe form.

cat <<EOF
REPORT FOR MY SYSTEM: $PCNAME
======================
Hostname :$PCNAME
Operating system and Version : $PCVERSION $OSNAME
Ip Address :$IPADD
RootFile FreeSpace :$STORAGE
======================
EOF
