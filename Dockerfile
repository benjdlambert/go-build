FROM golang:1.7.3-alpine
RUN apk add --update curl bash git openssh && \
    rm -rf /var/cache/apk/*

# Add Glide for Dependency Management
RUN curl https://glide.sh/get | sh

# Create Builder folder
RUN mkdir /builder
COPY builder.sh /builder/run.sh

# Make Exec
RUN chmod +x /builder/run.sh


# Set the entrypoint for the dockerfile
ENTRYPOINT ["/bin/sh", "/builder/run.sh"]

