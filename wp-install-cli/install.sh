#!/bin/bash
echo "hello- installing plugins"
wp user list
wp core update
wp plugin install 'multiple-domain' 'wordpress-seo' 'ssl-zen' 'akismet' 'wordpress-importer' --activate