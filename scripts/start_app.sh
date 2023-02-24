#!/usr/bin/bash 

sed -i 's/\[]/\["3.235.49.81"]/' /var/lib/jenkins/workspace/Django-Admin/djangoadmin/settings.py


virtualenv /home/ubuntu/env
source /home/ubuntu/env/bin/activate
pip3 install gunicorn
pip3 install -r /var/lib/jenkins/workspace/Django-Admin/requirements.txt

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
