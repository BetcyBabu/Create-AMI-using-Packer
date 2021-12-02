#!/bin/bash

sleep 30

sudo yum install httpd php git -y
sudo systemctl start httpd.service
sudo systemctl enable httpd.service

sudo mkdir /var/website/

sudo git clone https://github.com/BetcyBabu/sample-website.git  /var/website/

sudo cp -r /var/website/* /var/www/html/

sudo chown -R apache. /var/www/html/

sudo systemctl restart httpd.service

