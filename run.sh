#!/bin/sh

if [ ! -d /opt/syncthing/.config/syncthing ]; then
    mkdir -p /opt/syncthing/.config/syncthing
fi;

if [ ! -d /opt/syncthing/Sync ]; then
    mkdir -p /opt/syncthing/Sync
fi;

docker run  -d \
            -p 8080:8080 \
            -p 22000:22000 \
            -p 21025:21025 \
            -p 21026:21026 \
            -v "/opt/syncthing/.config/syncthing:/root/.config/syncthing" \
            -v "/opt/syncthing/Sync:/root/Sync" \
            --name syncthing \
            merlin83/syncthing
