#!/usr/bin/env bash

virtualenv /home/ubuntu/env
source /home/ubuntu/env/bin/activate
pip3 install gunicorn
pip3 install -r /var/lib/jenkins/workspace/Django-Admin/requirements.txt