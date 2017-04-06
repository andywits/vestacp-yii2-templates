# vestacp-yii2-templates

[English]

(0)
Templates and script work, proceeding from the fact that:
frontend is here -> /home/$USER/web/$DOMAIN/public_html/frontend/web
backend is here -> /home/$USER/web/$DOMAIN/public_html/backend/web

(1)
Add directories "apache2" and "nginx" from it repository to your /usr/local/vesta/data/templates/web/
(in CentOS/RHEL maybe you need rename "apache2" to "httpd")
Add yii2-cconf.sh script to any place on your server.

(2)
In Vesta CP web interface your can create both:
example.com
backend.example.com

After that you can edit domain settings in Vesta CP:
yii2-frontend for example.com and yii2-backend for backend.example.com


(3)
After all, you can start yii2-cconf.sh script with command:
( cd your-some-directory/ )
bash ./yii2-cconf.sh vestacpuser example.com

---------------------------------------------------------------

[Russian]

(0)
Шаблоны и скрипт работают, исходя из того, что:
фронтенд лежит здесь -> /home/$USER/web/$DOMAIN/public_html/frontend/web
бэкенд лежит здесь -> /home/$USER/web/$DOMAIN/public_html/backend/web

(1)
Добавьте директории "apache2" и "nginx" из этого репозитория в /usr/local/vesta/data/templates/web/
(в CentOS/RHEL возможно, придётся переименовать "apache2" в "httpd")
Добавьте yii2-cconf.sh скрипт в любое, нужно вам место на сервере.

(2)
В контрольной панели Vesta CP вы можете создать оба домена:
example.com
backend.example.com

После этого в Vesta CP вы можете отредактировать настройки доменов и устновить шаблоны:
yii2-frontend для example.com и yii2-backend для backend.example.com


(3)
В конце вы можете запустить yii2-cconf.sh скрипт с помощью команды:
( cd your-some-directory/ )
bash ./yii2-cconf.sh vestacpuser example.com
