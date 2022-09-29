#!/bin/bash

#Displays the name of the host.
echo -e "Hostname :"`hostname`

#Just print the host info text.
echo "Host Info. : "
hostnamectl

#Print all the ip addresses of host.
echo "Ip Addr :"`hostname --all-ip-addresses`

# Print the latest version of the host.
echo "Version :"`hostname --version`

#Display memory for the host in human readabe form.
echo "Memory :"
df -H /root

