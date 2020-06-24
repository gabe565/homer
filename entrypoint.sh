#!/bin/sh

while true; do echo n; done | cp -Ri /www/default-assets/* /www/assets/

# Ensure compatibility with previous version (config.yml was in the root directory)
if [ -f "/www/config.yml" ]; then
    yes n | cp -i /www/config.yml /www/assets
fi

darkhttpd /www/ --no-listing --port $PORT
