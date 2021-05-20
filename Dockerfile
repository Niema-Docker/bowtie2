
# Minimal Docker image for Bowtie2 v2.4.3 using Alpine base
FROM alpine:latest
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install BWA
RUN apk update && \
    apk add bash make unzip zlib-dev && \
    wget "https://github.com/BenLangmead/bowtie2/releases/download/v2.4.3/bowtie2-2.4.3-source.zip" && \
    unzip bowtie2-2.4.3-source.zip && \
    cd bowtie2-2.4.3 && \
    make && \
    make install && \
    cd .. && \
    rm -rf bowtie2-2.4.3
