FROM lsiobase/xenial
MAINTAINER aptalca

# environment settings
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# install packages
RUN \
 apt-get update && \
 apt-get install -y \
 	cron \
	libcompress-raw-zlib-perl \
	libhtml-parser-perl \
	libhttp-cookies-perl \
	liblwpx-paranoidagent-perl \
	libconfig-json-perl \
	libjson-xs-perl \
	wget && \

 apt-get clean && \
 rm -rf \
	/tmp/*
##DO STUFF HERE
## END EACH LINE WITH && \
## EXCEPT THE LAST LINE OF THE BLOCK


# copy local files
COPY root/ /

# ports and volumes
VOLUME /config

