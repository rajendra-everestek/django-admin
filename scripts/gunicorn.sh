#!/bin/bash

python3 -m venv env
source env/bin/activate

cd /home/ubuntu/djangoadmin

pip3 install -r requirements.txt

python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic -- no-input

echo "Migrations done"

cd /home/ubuntu/djangoadmin

cp -rf gunicorn.socket /etc/systemd/system/
cp -rf gunicorn.service /etc/systemd/system/

echo "$USER"
echo "$PWD"



systemctl daemon-reload
systemctl start gunicorn

echo "Gunicorn has started."

systemctl enable gunicorn

echo "Gunicorn has been enabled."

systemctl restart gunicorn


systemctl status gunicorn
