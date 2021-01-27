FROM harbor-poc666.netease.com/zcq/debian-jdk:0.1

ADD http://console-poc666.netease.com/download/nsf/nsf-agent-v2.6.6-ae06cc43-20200417-150504.jar /nsf-agent-v2.6.6.jar
COPY ./target/zcqtriangle-0.0.2-SNAPSHOT /zcqtriangle-v2.jar
COPY zcqtriangle-v2.yaml /zcqtriangle-v2.yaml
COPY ./start_zcqtriangle.sh /start_zcqtriangle.sh

CMD ["sh start_zcqtriangle.sh"]

EXPOSE 9933/tcp
