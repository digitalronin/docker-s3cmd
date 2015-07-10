FROM alpine:3.1

RUN apk add --update python
RUN apk add --update py-pip
RUN pip install python-dateutil

ADD files/s3cmd-1.5.2.tgz /usr/local/bin/

RUN     mkdir /opt
WORKDIR /opt
