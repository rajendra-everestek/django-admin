#!/usr/bin/env bash
systemd "sudo -p 'sudo password: ' #{command}"
sudo apt install -y python3-pip
sudo apt install -y nginx
sudo apt install -y virtualenv