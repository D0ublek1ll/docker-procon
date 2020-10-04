# D0ublek1ll/docker-procon
Dockerfile for procon
Built for use with the pterodactyl panel

## Introduction
Procon is a remote managment tool built in .NET for Battlefield Servers - BC2, BF3 & BF4

https://myrcon.net/topic/2-procon-1x/

## Deployment

### Instructions
This container image is designed to be used with the pterodactyl panel, it doesn't come with a pre-installed procon layer, this can be downloaded (and unzipped) with the pterodactyl installation script functionality or uploaded manually by the user.
An preconfigured egg is also available in this repository.

### Base Image
`alpine:latest`

### Volumes
 - /home/container

### Users
- Container

### Software
 - Mono
 - Unzip
 - OpenSSL
 - Tar
 - Bash
 - SQLite
 - Curl
