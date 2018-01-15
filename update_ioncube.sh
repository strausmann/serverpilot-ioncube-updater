#!/bin/bash

cd /usr/local
sudo rm -rf ioncube_loaders_lin_x86-64.tar.gz
sudo rm -rf /usr/local/ioncube

echo "Download und entpacken der neusten ionCube Loader Version"
sudo wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
sudo tar xzf ioncube_loaders_lin_x86-64.tar.gz

echo "Installation des ionCube Loader für PHP 5.4"
sudo cp /usr/local/ioncube/ioncube_loader_lin_5.4.so /opt/sp/php5.4/lib/php/extensions/no-debug-non-zts-20100525/
sudo bash -c 'echo "zend_extension=/opt/sp/php5.4/lib/php/extensions/no-debug-non-zts-20100525/ioncube_loader_lin_5.4.so" > /etc/php5.4-sp/conf.d/20ioncube.ini'
sudo service php5.4-fpm-sp restart

echo "Installation des ionCube Loader für PHP 5.5"
sudo cp /usr/local/ioncube/ioncube_loader_lin_5.5.so /opt/sp/php5.5/lib/php/extensions/no-debug-non-zts-20121212/
sudo bash -c 'echo "zend_extension=/opt/sp/php5.5/lib/php/extensions/no-debug-non-zts-20121212/ioncube_loader_lin_5.5.so" > /etc/php5.5-sp/conf.d/20ioncube.ini'
sudo service php5.5-fpm-sp restart

echo "Installation des ionCube Loader für PHP 5.6"
sudo cp /usr/local/ioncube/ioncube_loader_lin_5.6.so /opt/sp/php5.6/lib/php/extensions/no-debug-non-zts-20131226/
sudo bash -c 'echo "zend_extension=/opt/sp/php5.6/lib/php/extensions/no-debug-non-zts-20131226/ioncube_loader_lin_5.6.so" > /etc/php5.6-sp/conf.d/20ioncube.ini'
sudo service php5.6-fpm-sp restart

echo "Installation des ionCube Loader für PHP 7.0"
sudo cp /usr/local/ioncube/ioncube_loader_lin_7.0.so /opt/sp/php7.0/lib/php/extensions/no-debug-non-zts-20151012/
sudo bash -c 'echo "zend_extension=/opt/sp/php7.0/lib/php/extensions/no-debug-non-zts-20151012/ioncube_loader_lin_7.0.so" > /etc/php7.0-sp/conf.d/20ioncube.ini'
sudo service php7.0-fpm-sp restart

echo "Installation des ionCube Loader für PHP 7.1"
sudo cp /usr/local/ioncube/ioncube_loader_lin_7.1.so /opt/sp/php7.1/lib/php/extensions/no-debug-non-zts-20160303/
sudo bash -c 'echo "zend_extension=/opt/sp/php7.1/lib/php/extensions/no-debug-non-zts-20160303/ioncube_loader_lin_7.1.so" > /etc/php7.1-sp/conf.d/20ioncube.ini'
sudo service php7.1-fpm-sp restart

echo "Installation des ionCube Loader für PHP 7.2"
sudo cp /usr/local/ioncube/ioncube_loader_lin_7.2.so /opt/sp/php7.2/lib/php/extensions/no-debug-non-zts-20170718/
sudo bash -c 'echo "zend_extension=/opt/sp/php7.2/lib/php/extensions/no-debug-non-zts-20170718/ioncube_loader_lin_7.2.so" > /etc/php7.2-sp/conf.d/20ioncube.ini'
sudo service php7.2-fpm-sp restart

echo "Remove TEMP Files"
sudo rm -rf ioncube_loaders_lin_x86-64.tar.gz
sudo rm -rf /usr/local/ioncube