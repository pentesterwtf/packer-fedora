#/bin/bash

# Internal use only - do not distribute
# Checks if Fedora 31 has come out, then errors for the build

if [ "200" = $(curl --output /dev/null --silent https://mirror.aarnet.edu.au/pub/fedora/linux/releases/31/ --write-out "%{http_code}") ]; then echo "Fedora 31 released, upgrade script"; exit 1; fi
