#!/bin/sh

cd ../go && make clean && make all

sudo systemctl stop --now isucholar.go.service
sudo systemctl disable isucholar.go.service
sudo systemctl daemon-reload
sudo systemctl start --now isucholar.go.service
sudo systemctl enable isucholar.go.service

sudo systemctl restart nginx
sudo systemctl restart mysql

