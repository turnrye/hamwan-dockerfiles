FROM prom/prometheus
ADD prometheus.yml /etc/prometheus/
RUN apt-get update && apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor
COPY grafana_supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
