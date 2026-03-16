
# Minimal Docker image for Bowtie2 using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install Bowtie2
RUN apk update && \
    apk add bash g++ make perl python3 unzip zlib-dev && \
    wget -qO- "https://github.com/BenLangmead/bowtie2/archive/refs/tags/v2.5.5.tar.gz" | tar -zx && \
    cd bowtie2-* && \
    make && \
    make install && \
    cd .. && \
    rm -rf bowtie2-*
