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

cp -rf ./scripts/gunicorn.socket /etc/systemd/system/
cp -rf ./scripts/gunicorn.service /etc/systemd/system/

echo "$USER"
echo "$PWD"



systemctl daemon-reload
systemctl start gunicorn

echo "Gunicorn has started."

systemctl enable gunicorn

echo "Gunicorn has been enabled."

systemctl restart gunicorn


systemctl status gunicorn
