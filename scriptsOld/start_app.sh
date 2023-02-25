#!/usr/bin/bash 

sed -i 's/\[]/\["3.235.9.158"]/' /var/lib/jenkins/workspace/Django-Admin/djangoadmin/settings.py


# sudo apt install -y python3-venv

# python3 -m venv /var/lib/jenkins/workspace/env1
# source /var/lib/jenkins/workspace/env1/bin/activate

# pip3 install gunicorn
# pip3 install -r /var/lib/jenkins/workspace/Django-Admin/requirements.txt

cd /var/lib/jenkins/workspace/Django-Admin/

python3 manage.py migrate 
python3 manage.py makemigrations

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
