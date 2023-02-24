#!/usr/bin/bash 

sed -i 's/\[]/\["44.203.31.45"]/' /var/lib/jenkins/workspace/Django-Admin/djangoadmin/settings.py

python manage.py migrate 
python manage.py makemigrations     
python manage.py collectstatic
pip3 install gunicorn
sudo service gunicorn restart
sudo service nginx restart
#sudo tail -f /var/log/nginx/error.log
#sudo systemctl reload nginx
#sudo tail -f /var/log/nginx/error.log
#sudo nginx -t
#sudo systemctl restart gunicorn
#sudo systemctl status gunicorn
#sudo systemctl status nginx
# Check the status
#systemctl status gunicorn
# Restart:
#systemctl restart gunicorn
#sudo systemctl status nginx
