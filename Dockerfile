FROM docker.elastic.co/elasticsearch/elasticsearch:6.6.0

VOLUME ["/usr/share/elasticsearch/data"]

ENV ES_JAVA_OPTS "-Xms256m -Xmx256m"
ENV CLUSTER_NAME elasticsearch-default

USER root
COPY run.sh .

RUN chown elasticsearch:elasticsearch run.sh && chmod 0750 run.sh

CMD ["/bin/sh", "run.sh"]
