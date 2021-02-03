#!/bin/bash

source /etc/profile

# java -javaagent:/nsf-agent-v2.6.6.jar=zcqtriangle-vapm1 -Dnsf.log.level=debug -jar zcqtriangle-vapm1.jar
# java -javaagent:/napm-java-agent/napm-java-rewriter.jar=conf=napm-agent.properties -Dnsf.log.level=debug -jar zcqtriangle-vapm1.jar
java -javaagent:/nsf-agent-v2.6.6.jar=zcqtriangle-vapm1 -javaagent:/napm-java-agent/napm-java-rewriter.jar=conf=napm-agent.properties -Dnsf.log.level=debug -jar zcqtriangle-vapm1.jar
