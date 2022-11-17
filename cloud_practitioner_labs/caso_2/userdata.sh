#!/bin/bash
yum -y install httpd
systemctl enable httpd
systemctl start httpd
echo '<html><h1>Hello AWS, this is a simple web server created by enunez-n!</h1></html>' > /var/www/html/index.html
