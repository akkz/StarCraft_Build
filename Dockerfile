FROM alpine

RUN \
    apk update && \
    apk upgrade && \
    apk --update add ca-certificates nginx

WORKDIR /tmp

RUN \
  wget https://github.com/gloomyson/StarCraft/archive/master.zip && \
  rm -rf /usr/share/nginx/* && \
  unzip -o master.zip -d /usr/share/nginx/ && \
  ln -s /usr/share/nginx/StarCraft-master/ /usr/share/nginx/html && \
  rm -f master.zip && \
  ln -sf /dev/stdout /var/log/nginx/access.log && \
  ln -sf /dev/stderr /var/log/nginx/error.log 

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
