#!/bin/bash

sudo su
echo 'sudo su root privilages gotten' >> /tmp/log.txt

yum -y install httpd
echo 'httpd installed' >> /tmp/log.txt

systemctl start httpd
echo 'httpd started' >> /tmp/log.txt

systemctl enable httpd
echo 'httpd enabled' >> /tmp/log.txt

aws s3 cp s3://2dgametestbucket/2DSuperHero-Game.zip /var/www/html
echo 'zip file moved' >> /tmp/log.txt

cd /var/www/html

unzip 2DSuperHero-Game.zip
echo 'zip file unzipped' >> /tmp/log.txt
