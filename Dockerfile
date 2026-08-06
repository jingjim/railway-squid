FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PORT=3128

RUN apt-get update \
    && apt-get install -y --no-install-recommends squid ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY squid.conf /etc/squid/squid.conf

EXPOSE 3128

CMD ["/usr/sbin/squid", "-N", "-f", "/etc/squid/squid.conf"]
