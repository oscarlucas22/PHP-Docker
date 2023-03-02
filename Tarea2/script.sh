#! /bin/sh

while ! mysql -u ${USER_BOOKMEDIK} -p${PASSWD_BOOKMEDIK} -h ${DB_HOST}  -e ";" ; do
sleep 1
done
mysql -u $USER_BOOKMEDIK --password=$PASSWD_BOOKMEDIK -h $DB_HOST $NOMBRE_DB < /var/www/html/schema.sql
/usr/sbin/apache2ctl -D FOREGROUND
