#!/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/djangoadmin/nginx/nginx.conf /etc/nginx/sites-available/djangoadmin
sudo ln -s /etc/nginx/sites-available/djangoadmin /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/djangoadmin /etc/nginx/sites-enabled
#sudo nginx -t
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx


# sudo cp -rf app.conf /etc/nginx/sites-available/app
# chmod 710 /var/lib/jenkins/workspace/Django-Admin
# sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled
# sudo nginx -t
# sudo systemctl start nginx
# sudo systemctl enable nginx
# echo "Nginx has been started"
# sudo systemctl status nginx