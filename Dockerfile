FROM mono:latest

# ProCon 1.5.1.1

RUN apt-get update \
  && apt-get install -y unzip \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /procon \
  && cd /procon \
  && curl https://ae51.uk/download/procon/v1.5.3.4.zip -O \
  && unzip v1.5.3.4.zip \
  && rm -f v1.5.3.4.zip

COPY resources/ /

RUN chmod +x /tmp/tmpl.sh && chmod +x /tmp/run.sh && rm -f /procon/Config/accounts.cfg && cp /tmp/Configs/accounts.cfg /procon/Configs/

VOLUME /procon

ENV PC_PORT 27260
ENV PC_SERVER_NAME localhost
ENV PC_SERVER_TYPE BF4
ENV PC_SERVER_IP 127.0.0.1
ENV PC_SERVER_PORT 1234
ENV PC_SERVER_PASSWORD 1234

CMD [ "/tmp/run.sh" ]
