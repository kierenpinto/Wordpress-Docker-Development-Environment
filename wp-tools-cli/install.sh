#! /bin/bash

wp core install --url=localhost:8082 --title=Wordpress_Development --admin_user=admin --admin_password=admin --admin_email=example@example.com
wp core update
sh plugins.sh
wp import themeunittestdata.wordpress.xml --authors=create
