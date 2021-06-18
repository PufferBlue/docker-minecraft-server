FROM alpine:3
MAINTAINER PufferOverflow
WORKDIR /srv/minecraft
RUN apk add --no-cache openjdk8-jre-base
VOLUME /srv/minecraft
CMD ["-Xmx1024M","-Xms64M","-jar","/srv/minecraft/cache/paper.jar"]
ENTRYPOINT ["java"]
