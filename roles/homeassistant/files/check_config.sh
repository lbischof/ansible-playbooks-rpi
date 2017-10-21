#!/bin/bash
sudo su -m homeassistant -s /bin/bash -c \
    "source /srv/homeassistant/bin/activate \
     && hass --script check_config -c /home/homeassistant/.homeassistant"
