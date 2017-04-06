#!/bin/bash

# yii2 config correct script

# usage
# bash yii2-cconf.sh user domain

USER=$1
DOMAIN=$2

mkdir -p /home/$USER/web/$DOMAIN/public_html/frontend/web
mkdir -p /home/$USER/web/$DOMAIN/public_html/backend/web

ARR_CONF+=(
nginx
snginx
apache2
sapache2
httpd2
shttpd2
)

for CONF in "${ARR_CONF[@]}"
 do
cat /home/$USER/conf/web/$CONF.conf | \
sed 's|\/web\/backend\.|\/web\/|' \
> /home/$USER/conf/web/$CONF.conf_tmp
mv /home/$USER/conf/web/$CONF.conf /home/$USER/conf/web/$CONF.conf_bak
mv /home/$USER/conf/web/$CONF.conf_tmp /home/$USER/conf/web/$CONF.conf
done

apachectl graceful
/etc/init.d/nginx restart