FROM busybox

LABEL maintainer="wiggidy" mail="wiggidy@riseup.net"
LABEL description="Simple http server that returns the available storage of the host in KiB"
LABEL version="1.0"

COPY ./root /

EXPOSE 8080

CMD ["/init.sh"]