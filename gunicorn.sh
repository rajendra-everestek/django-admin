#!/usr/bin/bash
cp /var/lib/jenkins/workspace/Django-Admin/gunicorn/gunicorn.socket  /etc/systemd/system/gunicorn.socket
cp /var/lib/jenkins/workspace/Django-Admin/gunicorn/gunicorn.service  /etc/systemd/system/gunicorn.service

systemctl start gunicorn.service
systemctl enable gunicorn.service
