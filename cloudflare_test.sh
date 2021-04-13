#!/bin/bash

ip4list=$(wget -q -O - "https://www.cloudflare.com/ips-v4" | md5sum | cut -d ' ' -f 1)
ip6list=$(wget -q -O - "https://www.cloudflare.com/ips-v6" | md5sum | cut -d ' ' -f 1)

if [ $ip4list != "e10a25d780863a93260f9f7799a7fbd3" ]; then
    echo "ip whitelist update needed"
    exit 1;
fi

if [ $ip6list != "4532226399b094084303243c9d5c3442" ]; then
    echo "ip whitelist update needed"
    exit 1;
fi
