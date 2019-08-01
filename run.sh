#!/bin/sh

# By default start up apache in the foreground, override with /bin/bash for interative.
# start cron
chmod -R 777 ${DOCUMENTROOT}/activate/api/db

/usr/sbin/apache2ctl -k stop

rm -f /var/run/apache2/apache2.pid

/usr/sbin/apache2ctl -D FOREGROUND
