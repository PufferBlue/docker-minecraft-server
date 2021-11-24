FROM alpine:3
MAINTAINER PufferOverflow
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories \
  && apk add --no-cache openjdk8-jre-base \
  && mkdir -p /var/lib/minecraft \
  && wget -O /var/lib/minecraft/paperclip.jar https://papermc.io/api/v2/projects/paper/versions/1.12.2/builds/1618/downloads/paper-1.12.2-1618.jar \
  && cd /var/lib/minecraft \
  && java -jar /var/lib/minecraft/paperclip.jar -v
WORKDIR /srv
VOLUME /srv
ENTRYPOINT ["sh","-c","ln -s /var/lib/minecraft/cache /srv/cache && echo eula=true>/srv/eula.txt && java -Xmx1024M -Xms64M -jar /var/lib/minecraft/paperclip.jar $0 $@"]
