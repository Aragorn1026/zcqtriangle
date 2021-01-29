FROM harbor-poc666.netease.com/zcq/debian-jdk:0.1

MAINTAINER zhangchangqing@corp.netease.com

ADD http://console-poc666.netease.com/download/nsf/nsf-agent-v2.6.6-ae06cc43-20200417-150504.jar /nsf-agent-v2.6.6.jar
COPY ./target/zcqtriangle-0.0.2-SNAPSHOT.jar /zcqtriangle-v3.jar

EXPOSE 9933/tcp

ENTRYPOINT ["java","-javaagent:/nsf-agent-v2.6.6.jar=zcqtriangle-v3","-jar","-Dnsf.log.level=debug","/zcqtriangle-v3.jar"]
