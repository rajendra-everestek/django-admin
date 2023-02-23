#!/usr/bin/bash

echo "Pull Finished"
systemctl daemon-reload
systemctl restart nginx
