#!/usr/bin/with-contenv bash

echo "<------------------------------------------------->"
echo
echo "<------------------------------------------------->"
echo "cronjob running zap2xml on "$(date)

. /app/zap2xml.conf
cd /config
/config/zap2xml -u "$EMAIL" -p "$PASSWORD"
