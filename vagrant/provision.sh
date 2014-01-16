#!/bin/bash

yum install -y mysql mysql-server php php-cli php-mcrypt php-xml php-mbstring php-devel php-mysql php-pecl-memcached php-pear php-pecl-xdebug memcached httpd mlocate nano wget iptraf iftop memcached mod_ssl phpMyAdmin git git-flow 

# Modify httpd.conf
sed -i 's|/var/www/html|/vagrant|g' /etc/httpd/conf/httpd.conf
sed -i 's|AllowOverride None|AllowOverride All|g' /etc/httpd/conf/httpd.conf
sed -i 's|user apache|user vagrant|g' /etc/httpd/conf/httpd.conf
sed -i 's|group apache|group vagrant|g' /etc/httpd/conf/httpd.conf

# Modify phpMyAdmin.conf
sed -i 's|Require ip ::1||g' /etc/httpd/conf.d/phpMyAdmin.conf
sed -i 's|Allow from ::1||g' /etc/httpd/conf.d/phpMyAdmin.conf
sed -i 's|Require ip 127.0.0.1||g' /etc/httpd/conf.d/phpMyAdmin.conf
sed -i 's|Allow from 127.0.0.1|Allow from all|g' /etc/httpd/conf.d/phpMyAdmin.conf

# Modify phpMyAdmin Config
sed -i 's|FALSE;       // default unless you|TRUE; //|g' /etc/phpMyAdmin/config.inc.php

# Modify httpd/conf.d/phpMyAdmin.conf
bash -c 'echo "Alias /phpMyAdmin /usr/share/phpMyAdmin" > /etc/httpd/conf.d/phpMyAdmin.conf'
bash -c 'echo "Alias /phpmyadmin /usr/share/phpMyAdmin" >> /etc/httpd/conf.d/phpMyAdmin.conf'

# Remove welcome.conf
rm -rf /etc/httpd/conf.d/welcome.conf

# Enable XDebug
bash -c 'echo "[xdebug]" >> /etc/php.ini'
bash -c 'echo "zend_extension=\"/usr/lib64/php/modules/xdebug.so\"" >> /etc/php.ini'
bash -c 'echo "xdebug.remote_enable = 1" >> /etc/php.ini'

# Enable the LegoPHP sub toolbox
bash -c 'echo eval "$(/vagrant/scripts/bin/lego init -)" >> /home/vagrant/.bashrc'

# Make sure mysqld, memcached, and httpd start on boot
chkconfig httpd on
chkconfig mysqld on
chkconfig memcached on

# Start above three services
/etc/init.d/httpd restart
/etc/init.d/memcached restart
/etc/init.d/mysqld restart

# Import LegoPHP Schemas
SCHEMAS=/vagrant/schemas/*
for f in $SCHEMAS
do
    echo "Importing Schema " $f
    mysql -u root < $f
done
