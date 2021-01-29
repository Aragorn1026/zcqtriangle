#!/bin/bash

source /etc/profile

java -javaagent:/nsf-agent-v2.6.6.jar=noname -Dnsf.log.level=debug -jar zcqtriangle-v3.jar
