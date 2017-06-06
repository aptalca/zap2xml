#!/usr/bin/with-contenv bash

echo "<------------------------------------------------->"
echo
echo "<------------------------------------------------->"
echo "cronjob running zap2xml on "$(date)

. /app/zap2xml.conf
./config/zap2xml -u "$EMAIL" -p "$PASSWORD"
