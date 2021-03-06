#!/bin/bash

WORK="$(pwd)"
cd /opt/cpanel-dns
certbot -n --manual-public-ip-logging-ok --agree-tos --email "$CERT_EMAIL" --manual -i nginx --preferred-challenges=dns --manual-auth-hook /opt/cpanel-dns/certbot-cpanel-auth.py --manual-cleanup-hook /opt/cpanel-dns/certbot-cpanel-cleanup.py -d "$CERT_DOMAIN"
cd "$WORK"

