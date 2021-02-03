FROM harbor-poc666.netease.com/zcq/debian-jdk:0.1

MAINTAINER zhangchangqing@corp.netease.com

ADD http://console-poc666.netease.com/download/nsf/nsf-agent-v2.6.6-ae06cc43-20200417-150504.jar /nsf-agent-v2.6.6.jar
COPY ./target/zcqtriangle-0.0.2-SNAPSHOT.jar /zcqtriangle-vapm1.jar
COPY ./start_zcqtriangle.sh ./zcqtriangle-vapm1.yaml /
ADD http://console-poc666.netease.com/download/napm/napm-java-agent-v5.4.2-200522-4d1dcd8d.tar.gz /

RUN tar zxf /napm-java-agent-v5.4.2-200522-4d1dcd8d.tar.gz -C / \
&& echo 'productId=27-apm-test' >> /napm-java-agent/conf/napm-agent.properties \
&& echo 'service=zcqtriangle' >> /napm-java-agent/conf/napm-agent.properties \
&& echo 'endpoint=http://apm-collector-poc666.netease.com' >> /napm-java-agent/conf/napm-agent.properties \
&& chmod +x /start_zcqtriangle.sh

EXPOSE 9933/tcp

CMD ["/start_zcqtriangle.sh"]
