FROM sameersbn/skype:1.0.1-3

RUN apt-get update && apt-get install -y fonts-cantarell \
 && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y libcanberra0
COPY scripts/ /var/cache/skype/
COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]
