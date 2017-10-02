FROM lsiobase/alpine:3.6
MAINTAINER aptalca

# environment settings
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# install packages
RUN \
 apk add --no-cache \
 	logrotate \
	nano \
	wget && \
 apk add --no-cache \
 	--repository http://nl.alpinelinux.org/alpine/edge/main \
	perl-compress-raw-zlib \
	perl-html-parser \
	perl-http-cookies \
	perl-json \
	perl-lwp-useragent-determined && \
 apk add --no-cache \
 	--repository http://nl.alpinelinux.org/alpine/edge/community \
	perl-json-maybexs && \
 apk add --no-cache \
 	--repository http://nl.alpinelinux.org/alpine/edge/testing \
	perl-json-xs && \

# fix logrotate
 sed -i "s#/var/log/messages {}.*# #g" /etc/logrotate.conf

# copy local files
COPY root/ /

# ports and volumes
VOLUME /config

