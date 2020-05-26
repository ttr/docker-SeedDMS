#!/bin/bash
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin

if [[ $(ls -l /app/data | wc -l ) == 1 ]]; then
  cp -rvn /app/data.org/* /app/data/
fi
if [[ $(ls -l /app/conf |wc -l)  == 1 ]]; then
  cp -rvn /app/conf.org/* /app/conf/
  touch /app/conf/ENABLE_INSTALL_TOOL
fi
chown -R www-data: /app/conf/ /app/data/

exec runsvdir -P /etc/service 'log: ...........................................................................................................................................................................................................................................................................................................................................................................................................'

