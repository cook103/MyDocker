#!/bin/bash
# open port for pihole and change dns server!
dns="8.8.8.8"
sudo systemctl stop systemd-resolved.service
sudo systemctl disable systemd-resolved.service
echo "nameserver $dns" | sudo tee -a /etc/resolv.conf

