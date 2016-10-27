FROM golang:1.7.3-alpine

RUN mkdir /builder
WORKDIR /builder
COPY builder.sh .
RUN chmod +x ./builder.sh

CMD ["/builder/builder.sh"]

