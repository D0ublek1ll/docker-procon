#!/usr/bin/env sh
/tmp/tmpl.sh /tmp/Configs/procon.cfg PC > /procon/Configs/procon.cfg
/tmp/tmpl.sh /tmp/Configs/usage.xml PC > /procon/usage.xml
mkdir -p "/procon/Configs/${PC_SERVER_IP}_${PC_SERVER_PORT}/"
/tmp/tmpl.sh "/tmp/$PC_SERVER_TYPE/Server.cfg" PC > "/procon/Configs/${PC_SERVER_IP}_${PC_SERVER_PORT}/${PC_SERVER_IP}_${PC_SERVER_PORT}.cfg"
cd /procon/
mono PRoCon.Console.exe
