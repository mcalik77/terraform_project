#!/bin//bash
sudo yum update -y
sudo yum install mysql-client -y
sudo yum install apache2 apache2-utils -y
sudo yum install php5 -y
sudo yum install php5 libapache2-mod-php5 php5-mcrypt php5-curl php5-gd php5-xmlrp -y
sudo yum install php5-mysqlnd-ms -y
sudo service apache2 restart
sudo wget -c http://wordpress.org/wordpress-5.1.1.tar.gz
sudo tar -xzvf wordpress-5.1.1.tar.gz
sleep 20
sudo mkdir -p /var/www/html/
sudo rsync -av wordpress/* /var/www/html/
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
sudo cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sudo service apache2 restart
sleep 20