# Use the official Alpine Linux 3.19 image as a base
FROM alpine:3.19 as base

# Install core dependencies for Hugo and npm
RUN apk add --no-cache \
    libc6-compat \
    libstdc++ \
    git \
    curl \
    nodejs \
    npm \
    git

# Set the working directory
WORKDIR /src

# Install Hugo Extended
ENV HUGO_VERSION 0.93.0
ENV HUGO_BINARY hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz
ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} /tmp/hugo.tar.gz
RUN tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin/ \
    && rm /tmp/hugo.tar.gz
