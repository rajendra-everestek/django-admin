#!/usr/bin/env bash

virtualenv /home/ubuntu/env
source /home/ubuntu/env/bin/activate
pip3 install gunicorn
pip3 install -r /home/ubuntu/djangoadmin/requirements.txt