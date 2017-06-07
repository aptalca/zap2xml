FROM lsiobase/alpine:3.6
MAINTAINER aptalca

# environment settings
#ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# install packages
RUN \
 apk add --no-cache \
 	nano \
	perl-compress-raw-zlib \
	perl-html-parser \
	perl-http-cookies \
	perl-lwp-useragent-determined \
	perl-json-maybexs \
	wget && \
 apk add --no-cache \
 	--repository http://nl.alpinelinux.org/alpine/edge/testing \
	perl-json-xs

# copy local files
COPY root/ /

# ports and volumes
VOLUME /config

