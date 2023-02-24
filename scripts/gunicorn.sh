#!/usr/bin/bash
sudo cp /var/lib/jenkins/workspace/Django-Admin/gunicorn/gunicorn.socket  /etc/systemd/system/gunicorn.socket
sudo cp /var/lib/jenkins/workspace/Django-Admin/gunicorn/gunicorn.service  /etc/systemd/system/gunicorn.service

systemctl daemon-reload
sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service
