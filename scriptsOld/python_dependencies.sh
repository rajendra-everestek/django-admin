#!/usr/bin/env bash

# virtualenv /home/ubuntu/env
# source /home/ubuntu/env/bin/activate

sudo apt install -y python3-venv

python3 -m venv /var/lib/jenkins/workspace/env1
source /var/lib/jenkins/workspace/env1/bin/activate

pip3 install gunicorn
pip3 install -r /var/lib/jenkins/workspace/Django-Admin/requirements.txt