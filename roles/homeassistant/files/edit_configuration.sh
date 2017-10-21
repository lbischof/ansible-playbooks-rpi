#!/bin/bash

cd /home/homeassistant/.homeassistant
sudo su homeassistant -s /bin/bash
echo "=====> Checking configuration"
sudo su -m homeassistant -s /bin/bash -c \
    "source /srv/homeassistant/bin/activate \
     && hass --script check_config -c /home/homeassistant/.homeassistant \
     | ack --nocolor --passthru ERROR"

if [ $? -ne 0 ]; then
    echo "=====> Restarting Homeassistant"
    sudo systemctl restart home-assistant@homeassistant.service
fi
