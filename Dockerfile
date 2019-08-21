FROM busybox

LABEL maintainer="wiggidy" mail="wiggidy@riseup.net"
LABEL description="Simple http server that returns the available storage of the host in KiB"

COPY ./root /

RUN chmod +x /init.sh

EXPOSE 8080

CMD ["/init.sh"]
