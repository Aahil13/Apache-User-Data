#!/bin/bash

# Update the system packages
yum update -y

# Install Apache2
yum install -y httpd.x86_64

# Start and enable the Apache2 service
systemctl start httpd.service
systemctl enable httpd.service

# Override the default Apache configuration page
echo "<h1>I'm $(hostname -f) </h1>" > /var/www/html/index.html


