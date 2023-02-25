#!/bin/bash

sudo cp -rf /var/lib/jenkins/workspace/Django-Admin/scripts/app.conf /etc/nginx/sites-available/Django-Admin
chmod 710 /var/lib/jenkins/workspace/Django-Admin

sudo ln -s /etc/nginx/sites-available/Django-Admin /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been started"

sudo systemctl status nginx