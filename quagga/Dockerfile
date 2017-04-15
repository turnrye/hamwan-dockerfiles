FROM alpine
RUN apk add --no-cache quagga \
  supervisor
ADD supervisor.conf /etc/supervisor.conf
RUN touch /etc/quagga/zebra.conf && \
  touch /etc/quagga/ospfd.conf
VOLUME /etc/quagga
EXPOSE 2601 \
  2602 \
  2603 \
  2604 \
  2605 \
  2606
CMD ["/usr/sbin/ospfd"]
