FROM ubuntu:19.04

RUN apt-get update && apt-get install -y \
  autoconf \
  bsdmainutils \
  automake \
  gcc \
  libao-dev \
  libc-dev \
  libtool \
  make \
  pkgconf \
# End of packages list
