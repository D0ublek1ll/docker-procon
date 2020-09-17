FROM mono:latest

MAINTAINER Mick de Jong, <ik@mickdejong.nl>

RUN apt-get update
RUN apt-get install -y curl ca-certificates openssl tar bash sqlite unzip
RUN adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

RUN cd /home/container
WORKDIR /home/container

# ProCon 1.5.1.1
RUN mkdir procon \
  && cd procon \
  && curl https://ae51.uk/download/procon/v1.5.3.4.zip -O \
  && unzip v1.5.3.4.zip \
  && rm -f v1.5.3.4.zip

COPY resources/ /home/container/

RUN rm -f procon/Config/accounts.cfg && cp tmp/Configs/accounts.cfg procon/Configs/

VOLUME /home/container/

ENV PC_PORT 27260
ENV PC_SERVER_NAME localhost
ENV PC_SERVER_TYPE BF4
ENV PC_SERVER_IP 127.0.0.1
ENV PC_SERVER_PORT 1234
ENV PC_SERVER_PASSWORD 1234

COPY ./entrypoint.sh entrypoint.sh
CMD ["/bin/bash", "entrypoint.sh"]
