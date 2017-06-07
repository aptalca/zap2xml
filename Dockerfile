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
	perl-json \
	perl-json-maybexs \
	wget && \
	
 ln -s ./Cpanel/JSON /usr/lib/perl5/vendor_perl/JSON

# copy local files
COPY root/ /

# ports and volumes
VOLUME /config

