#!/bin/bash
set -e
if test -z "$API_ENDPOINT"
then
  exit 3
else
  sed -i 's@REPLACE_ME@'"$API_ENDPOINT"'@g' /etc/nginx/nginx.conf
fi
if [[ -z ${1} ]]; then
echo "Starting nginx..."
exec $(which nginx) -c /etc/nginx/nginx.conf -g "daemon off;"
else
  exec "$@"
fi