#!/usr/bin/bash 

sed -i 's/\[]/\["3.235.49.81"]/' /var/lib/jenkins/workspace/Django-Admin/djangoadmin/settings.py

virtualenv /home/ubuntu/env
source /home/ubuntu/env/bin/activate
cd /var/lib/jenkins/workspace/Django-Admin

pip3 install -r requirements.txt
python3 manage.py migrate 
python3 manage.py makemigrations     
python3 manage.py collectstatic
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
