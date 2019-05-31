FROM alpine:3.8

# Download, compile and install dasm
RUN  apk add --no-cache gcc libc-dev make \
  && mkdir /tmp/dasm-src \
  && cd /tmp/dasm-src \
  && wget -q https://tenet.dl.sourceforge.net/project/dasm-dillon/dasm-dillon/2.20.11/dasm-2.20.11-2014.03.04-source.tar.gz \
  && echo "2ce78b29505b31778b8f796ba4b161b9f890e77e  dasm-2.20.11-2014.03.04-source.tar.gz" > dasm.sha \
  && sha1sum -c dasm.sha \
  && cd /tmp/dasm-src \
  && tar xf dasm-2.20.11-2014.03.04-source.tar.gz \
  && cd dasm-2.20.11-20140304 \
  && make \
  && mv bin/dasm /usr/local/bin/ \
  && rm -r /tmp/dasm-src \
  && apk del gcc libc-dev make \
  && (dasm || true)
