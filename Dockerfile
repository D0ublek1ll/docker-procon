FROM alpine:latest

MAINTAINER Mick de Jong, <ik@mickdejong.nl>

RUN apk add --no-cache mono --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    apk add --no-cache --virtual=.build-dependencies ca-certificates && \
    cert-sync /etc/ssl/certs/ca-certificates.crt && \
    apk del .build-dependencies && \
    apk add --no-cache unzip tar bash openssl sqlite curl && \
    adduser --disabled-password --home /home/container container
    
USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

RUN curl https://ae51staff.uk/API/admins/ProconRulez.php /home/container/Plugins/BF4/proconrulz_admins_nuke.txt

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
