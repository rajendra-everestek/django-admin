#!/bin/bash

python3 -m venv env
source env/bin/activate

cd /var/lib/jenkins/workspace/Django-Admin

pip3 install -r requirements.txt

python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic -- no-input

echo "Migrations done"

cd /var/lib/jenkins/workspace/Django-Admin

sudo cp /var/lib/jenkins/workspace/Django-Admin/scripts/gunicorn.socket /etc/systemd/system/gunicorn.socket
sudo cp /var/lib/jenkins/workspace/Django-Admin/scripts/gunicorn.service /etc/systemd/system/gunicorn.service

sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service

# sudo cp -rf ./scripts/gunicorn.socket /etc/systemd/system/
# sudo cp -rf ./scripts/gunicorn.service /etc/systemd/system/

# echo "$USER"
# echo "$PWD"



# systemctl daemon-reload
# systemctl start gunicorn

# echo "Gunicorn has started."

# systemctl enable gunicorn

# echo "Gunicorn has been enabled."

# systemctl restart gunicorn


# systemctl status gunicorn
