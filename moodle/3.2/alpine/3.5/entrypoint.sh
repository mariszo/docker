#!/bin/bash

[ -d /etc/letsencrypt ] || certbot certonly --standalone -d $MOODLE_DOMAIN

sed -i -e "s/{{MOODLE_DOMAIN}}/${MOODLE_DOMAIN}/" /etc/nginx/nginx.conf

exec "$@"
