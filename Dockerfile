FROM ubuntu:jammy as addr-builder

WORKDIR /tmp
RUN apt update && \
    apt install -y gcc libsodium-dev make autoconf git && \
    git clone https://github.com/cathugger/mkp224o.git && \
    cd mkp224o && \
    ./autogen.sh && \
    ./configure --enable-amd64-51-30k && \
    make && ls

## change "pdns" to any word
WORKDIR /tmp/mkp224o
RUN ./mkp224o -d /tmp/torkeys/ pdns -n 1

FROM alpine:3.16.0

RUN apk add --no-cache tor
COPY --from=addr-builder /tmp/torkeys /tmp/torkeys
RUN mkdir -p /var/lib/tor/finalkey && \
    cp -r /tmp/torkeys/*/* /var/lib/tor/finalkey && \
    ls -lah /var/lib/tor/finalkey && \
    chmod -R u+rwX,og-rwx /var/lib/tor/finalkey

COPY torrc /etc/tor/torrc
ENTRYPOINT ["/bin/sh"]
CMD ["-c", "cat /var/lib/tor/finalkey/hostname && tor -f /etc/tor/torrc"]