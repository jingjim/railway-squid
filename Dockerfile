FROM ubuntu/squid:6.13-25.04_beta

COPY squid.conf /etc/squid/squid.conf

EXPOSE 3128

CMD ["-f", "/etc/squid/squid.conf", "-NYC"]