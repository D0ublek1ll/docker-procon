#!/usr/bin/env sh
./tmpl.sh ./Configs/accounts.cfg PC > /procon/Configs/accounts.cfg
./tmpl.sh ./Configs/procon.cfg PC > /procon/Configs/procon.cfg
./tmpl.sh ./Configs/usage.xml PC > /procon/usage.xml
mkdir -p "/procon/$PC_SERVER_IP_$PC_SERVER_PORT/"
./tmpl.sh "./$PC_SERVER_TYPE/Server.cfg" PC > "/procon/$PC_SERVER_IP_$PC_SERVER_PORT/$PC_SERVER_IP_$PC_SERVER_PORT.cfg"
