FROM mono:latest

MAINTAINER Mick de Jong, <ik@mickdejong.nl>

RUN apt-get update
RUN apt-get install -y curl ca-certificates openssl tar bash sqlite unzip iputils-ping
RUN chmod 4755 /bin/ping
RUN adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
