FROM debian:sid

MAINTAINER merlin83

RUN apt-get update; apt-get install -qy make gcc wget

RUN cd /tmp/ && \
    wget https://github.com/syncthing/syncthing/releases/download/v0.10.0/syncthing-linux-amd64-v0.10.0.tar.gz && \
    tar -zxf syncthing-linux-amd64-v0.10.0.tar.gz && \
    rm syncthing-linux-amd64-v0.10.0.tar.gz

EXPOSE 22000
EXPOSE 21025
EXPOSE 21026

# web interface
EXPOSE 8080

VOLUME ["/root/.config/syncthing, "/root/Sync"]

CMD ["/tmp/syncthing-linux-amd64-v0.10.0/syncthing", "-gui-address", "0.0.0.0:8080"]