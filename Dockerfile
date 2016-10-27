FROM golang:1.7.3-alpine

RUN mkdir /builder
COPY builder.sh /builder/run.sh
RUN chmod +x /builder/run.sh

ENTRYPOINT ["/bin/sh", "/builder/run.sh"]

