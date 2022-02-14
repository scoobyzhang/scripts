#!/bin/bash
git clone https://github.com/scoobyzhang/personal-tools
cd personal-tools/docker-compose/trojan
apt update && apt install nginx -y
ufw allow 443/tcp
docker-compose -f docker-compose-trojan.yml up -d
