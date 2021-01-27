#!/bin/bash

source /etc/profile

java -javaagent:/nsf-agent-v2.6.6.jar=zcqtriangle-v2 -Dnsf.log.level=debug -jar zcqtriangle-v2.jar
