FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends python3 ca-certificates && \
    rm -rf /var/lib/apt/lists/*

COPY xbvr /usr/bin/xbvr
COPY xbvr_data/ /tmp/xbvr_data/
COPY docker_start.sh /
RUN chmod 777 /docker_start.sh

EXPOSE 9998-9999
VOLUME /root/.config/

CMD ["/docker_start.sh"]
