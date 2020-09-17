# D0ublek1ll/docker-procon
Dockerfile for procon

## Introduction
Procon is a remote managment tool built in .NET for Battlefield Servers - BC2, BF3 & BF4

https://myrcon.net/topic/2-procon-1x/

## Deployment

### Volumes
 - /procon

### Ports
 - 27260/TCP

### Environment Variables

 - PC_PORT            Procon Port : 27260
 - PC_SERVER_NAME     Remote Server Name
 - PC_SERVER_TYPE     Remote Server Type
 - PC_SERVER_IP       Remote Server Ip
 - PC_SERVER_PORT     Remote Server RCON Port
 - PC_SERVER_PASSWORD Remote Server RCON password
 
### Command Line
 ``` 
 docker run -d --name=procon -p 27260:27260 \
 --restart=always \
 -e PC_PORT=27260 \
 -e PC_SERVER_NAME=Battlefield \
 -e PC_SERVER_TYPE=BF4 \
 -e PC_SERVER_IP=192.0.2.1 \ 
 -e PC_SERVER_PORT=1234 \
 -e PC_SERVER_PASSWORD=1234 \
 rungeict/procon
 ```
